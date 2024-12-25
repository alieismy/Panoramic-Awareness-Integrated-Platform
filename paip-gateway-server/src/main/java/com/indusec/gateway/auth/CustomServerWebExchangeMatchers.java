package com.indusec.gateway.auth;

import com.indusec.oauth2.common.properties.SecurityProperties;
import org.springframework.security.web.server.util.matcher.ServerWebExchangeMatcher;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

/**
 * 自定义 ServerWebExchangeMatcher
 * 解决只要请求携带access_token，排除鉴权的url依然会被拦截
 *
 * @author:  Jiang Lie
 * @email:   JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since:   2022/6/10
 */
public class CustomServerWebExchangeMatchers implements ServerWebExchangeMatcher {
    private final SecurityProperties securityProperties;

    private final AntPathMatcher antPathMatcher = new AntPathMatcher();

    public CustomServerWebExchangeMatchers(SecurityProperties securityProperties) {
        this.securityProperties = securityProperties;
    }

    @Override
    public Mono<MatchResult> matches(ServerWebExchange exchange) {
        for (String url : securityProperties.getIgnore().getUrls()) {
            if (antPathMatcher.match(url, exchange.getRequest().getURI().getPath())) {
                return MatchResult.notMatch();
            }
        }
        return MatchResult.match();
    }
}
