package com.indusec.oauth.mobile;

import com.indusec.oauth.service.impl.UserDetailServiceFactory;
import com.indusec.oauth2.common.token.MobileAuthenticationToken;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * <p> Mobile Authentication Provider </p>
 *
 * <p> 实现登录逻辑，并绑定 MobileAuthenticationToken 类 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Setter
@Getter
public class MobileAuthenticationProvider implements AuthenticationProvider {
    private UserDetailServiceFactory userDetailsServiceFactory;
    private PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) {
        MobileAuthenticationToken authenticationToken = (MobileAuthenticationToken) authentication;
        String mobile = (String) authenticationToken.getPrincipal();
        String password = (String) authenticationToken.getCredentials();
        UserDetails user = userDetailsServiceFactory.getService(authenticationToken).loadUserByMobile(mobile);
        if (user == null) {
            throw new InternalAuthenticationServiceException("手机号或密码错误");
        }
        if (!passwordEncoder.matches(password, user.getPassword())) {
            throw new InternalAuthenticationServiceException("手机号或密码错误");
        }
        MobileAuthenticationToken authenticationResult = new MobileAuthenticationToken(user, password, user.getAuthorities());
        authenticationResult.setDetails(authenticationToken.getDetails());
        return authenticationResult;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return MobileAuthenticationToken.class.isAssignableFrom(authentication);
    }
}
