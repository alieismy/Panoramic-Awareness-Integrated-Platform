package com.indusec.oauth.config;

import com.indusec.common.constant.SecurityConstants;
import com.indusec.common.model.SysUser;
import com.indusec.oauth.model.Client;
import com.indusec.oauth.service.IClientService;
import com.indusec.oauth.service.impl.RedisClientDetailsService;
import com.indusec.oauth.service.impl.UserDetailServiceFactory;
import com.indusec.oauth.utils.OidcIdTokenBuilder;
import com.indusec.oauth2.common.constants.IdTokenClaimNames;
import com.indusec.oauth2.common.properties.TokenStoreProperties;
import com.indusec.oauth2.common.util.AuthUtils;
import cn.hutool.core.util.StrUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.cloud.bootstrap.encrypt.KeyProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.TokenGranter;
import org.springframework.security.oauth2.provider.code.RandomValueAuthorizationCodeServices;
import org.springframework.security.oauth2.provider.error.WebResponseExceptionTranslator;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenStore;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * <p> OAuth2 自定义认证服务器 </p>
 *
 * <p> 授权/认证服务器配置 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2018/10/24 10:38
 */
@Configuration
@EnableAuthorizationServer
@AutoConfigureAfter(AuthorizationServerEndpointsConfigurer.class)
@DependsOn("flywayConfig")
public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {
    /**
     * 注入authenticationManager认证管理器 来支持 password grant type
     */
    @Autowired
    private AuthenticationManager authenticationManager;

    @Resource
    private UserDetailServiceFactory userDetailsServiceFactory;

    /**
     * access_token存储器
     * 可以结合自己的业务场景考虑将access_token存入数据库还是redis
     */
    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private WebResponseExceptionTranslator webResponseExceptionTranslator;

    @Autowired
    private RedisClientDetailsService clientDetailsService;

    @Autowired
    private RandomValueAuthorizationCodeServices authorizationCodeServices;

    @Autowired
    private TokenGranter tokenGranter;

    /**
     * 配置身份认证器，配置认证方式，TokenStore，TokenGranter，OAuth2RequestFactory
     * 配置令牌（token）的访问端点和令牌服务(token services)
     *
     * @param endpoints
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) {
        endpoints.tokenStore(tokenStore)
            .authenticationManager(authenticationManager)
                //.userDetailsService(userDetailsServiceFactory.getService(SecurityConstants.DEF_ACCOUNT_TYPE))
            .authorizationCodeServices(authorizationCodeServices)
            .exceptionTranslator(webResponseExceptionTranslator)
            .tokenGranter(tokenGranter);
        //在刷新 token 的时候，携带 refresh_token 去请求 /oauth/token 端点，会生成新的 access_token 和 refresh_token，
        //但是你会发现，只有第一次的 refresh_token 可以使用，后面的都不能够使用。
        //这个问题主要原因来自于授权服务器端点配置，默认情况下，授权服务器的端点配置会有这么一个属性：reuseRefreshToken 表示重复使用刷新令牌。
        //也就是说会一直重复使用第一次请求到的 refresh_token，而后面的 refresh_token 就是无效的了。
        //参见org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer
        // 自定义端点路径, 默认为/oauth/token，/oauth/token_key 之类
        // /oauth/authorize ：授权端点
        // /oauth/token ：令牌端点
        // /oauth/check_token ：用于资源服务访问的令牌解析端点
        // endpoints.pathMapping("/oauth/token", "/auth/token");

    }

    /**
     * 配置OAuth2的客户端相关信息，详情信息在这里进行初始化，配置client详情:
     * clientId：（必须的）用来标识客户端的Id
     * secret：（需要值得信任的客户端）客户端安全码，如果有的话
     * scope：用来限制客户端的访问范围，如果为空（默认）的话，那么客户端拥有全部的访问范围
     * authorizedGrantTypes：可以使用的授权类型，默认为空
     * authorities：可以使用的权限（基于Spring Security authorities）
     *
     * @param clients
     * @throws Exception
     */
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.withClientDetails(clientDetailsService);
        clientDetailsService.loadAllClientToCache();
    }

    /**
     * 用来配置令牌端点(Token Endpoint)的安全约束
     * 对应于配置AuthorizationServer安全认证的相关信息，创建ClientCredentialsTokenEndpointFilter核心过滤器
     *
     * @param security
     */
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) {
        security
            .tokenKeyAccess("isAuthenticated()")
            .checkTokenAccess("permitAll()")
            //允许表单认证, 让/oauth/token支持client_id以及client_secret作登录认证
            .allowFormAuthenticationForClients();
    }
    @Bean
    @Order(1)
    public TokenEnhancer tokenEnhancer(@Autowired(required = false) KeyProperties keyProperties
                , IClientService clientService
                , TokenStoreProperties tokenStoreProperties) {
        return (accessToken, authentication) -> {
            Set<String> responseTypes = authentication.getOAuth2Request().getResponseTypes();
            Map<String, Object> additionalInfo = new HashMap<>(3);
            String accountType = AuthUtils.getAccountType(authentication.getUserAuthentication());
            if (StrUtil.isNotEmpty(accountType)) {
            additionalInfo.put(SecurityConstants.ACCOUNT_TYPE_PARAM_NAME, accountType);
            }
            if (responseTypes.contains(SecurityConstants.ID_TOKEN)
                    || "authJwt".equals(tokenStoreProperties.getType())) {
                Object principal = authentication.getPrincipal();
                //增加id参数
                if (principal instanceof SysUser) {
                    SysUser user = (SysUser)principal;
                    if (responseTypes.contains(SecurityConstants.ID_TOKEN)) {
                        //生成id_token
                        setIdToken(additionalInfo, authentication, keyProperties, clientService, user);
                    }
                    if ("authJwt".equals(tokenStoreProperties.getType())) {
                        additionalInfo.put("id", user.getId());
                    }
                }
            }
            ((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(additionalInfo);
            return accessToken;
        };
    }
    /**
     * 生成id_token
     * @param additionalInfo 存储token附加信息对象
     * @param authentication 授权对象
     * @param keyProperties 密钥
     * @param clientService 应用service
     */
    private void setIdToken(Map<String, Object> additionalInfo, OAuth2Authentication authentication
            , KeyProperties keyProperties, IClientService clientService, SysUser user) {
        String clientId = authentication.getOAuth2Request().getClientId();
        Client client = clientService.loadClientByClientId(clientId);
        if (client.getSupportIdToken()) {
            String nonce = authentication.getOAuth2Request().getRequestParameters().get(IdTokenClaimNames.NONCE);
            long now = System.currentTimeMillis();
            long expiresAt = System.currentTimeMillis() + client.getIdTokenValiditySeconds() * 1000;
            String idToken = OidcIdTokenBuilder.builder(keyProperties)
                    .issuer(SecurityConstants.ISS)
                    .issuedAt(now)
                    .expiresAt(expiresAt)
                    .subject(String.valueOf(user.getId()))
                    .name(user.getNickname())
                    .loginName(user.getUsername())
                    .picture(user.getHeadImgUrl())
                    .audience(clientId)
                    .nonce(nonce)
                    .build();
            additionalInfo.put(SecurityConstants.ID_TOKEN, idToken);
        }
    }
}
