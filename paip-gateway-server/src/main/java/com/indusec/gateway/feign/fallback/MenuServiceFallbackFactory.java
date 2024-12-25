package com.indusec.gateway.feign.fallback;

import cn.hutool.core.collection.CollectionUtil;
import com.indusec.gateway.feign.MenuServiceClient;
import org.springframework.cloud.openfeign.FallbackFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * <p> menuService降级工场 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/1/18
 */
@Slf4j
@Component
public class MenuServiceFallbackFactory implements FallbackFactory<MenuServiceClient> {
    @Override
    public MenuServiceClient create(Throwable throwable) {
        return roleIds -> {
            log.error("调用findByRoleCodes异常：{}", roleIds, throwable);
            return CollectionUtil.newArrayList();
        };
    }
}
