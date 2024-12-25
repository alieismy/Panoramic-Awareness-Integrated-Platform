package com.indusec.gateway.feign;

import com.indusec.common.model.SysMenu;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.Future;

/**
 * 异步MenuService FeignClient
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2021/8/8
 */
@Component
public class AsynMenuServiceClient {
    @Lazy
    @Resource
    private MenuServiceClient menuService;

    @Async
    public Future<List<SysMenu>> findByRoleCodes(String roleCodes) {
        List<SysMenu> result = menuService.findByRoleCodes(roleCodes);
        return new AsyncResult<>(result);
    }
}
