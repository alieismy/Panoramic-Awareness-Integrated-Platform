package com.indusec.gateway.auth;

import com.indusec.common.model.SysMenu;
import com.indusec.gateway.feign.AsynMenuServiceClient;
import com.indusec.oauth2.common.service.impl.DefaultPermissionServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.security.authorization.AuthorizationDecision;
import org.springframework.security.authorization.ReactiveAuthorizationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.server.authorization.AuthorizationContext;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Future;

/**
 * <p> URL权限认证 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/6
 */
@Slf4j
@Component
public class PermissionAuthManager extends DefaultPermissionServiceImpl implements ReactiveAuthorizationManager<AuthorizationContext> {
    @Resource
    private AsynMenuServiceClient asynMenuService;

    @Override
    public Mono<AuthorizationDecision> check(Mono<Authentication> authentication, AuthorizationContext authorizationContext) {
        return authentication.map(auth -> {
            ServerWebExchange exchange = authorizationContext.getExchange();
            ServerHttpRequest request = exchange.getRequest();
            boolean isPermission = super.hasPermission(auth, request.getMethodValue(), request.getURI().getPath());
            return new AuthorizationDecision(isPermission);
        }).defaultIfEmpty(new AuthorizationDecision(false));
    }

    @Override
    public List<SysMenu> findMenuByRoleCodes(String roleCodes) {
        Future<List<SysMenu>> futureResult = asynMenuService.findByRoleCodes(roleCodes);
        try {
            return futureResult.get();
        } catch (Exception e) {
            log.error("asynMenuService.findMenuByRoleCodes-error", e);
        }
        return Collections.emptyList();
    }
}
