package com.indusec.search.client.feign.fallback;

import cn.hutool.core.map.MapUtil;
import com.indusec.search.client.feign.AggregationServiceClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

/**
 * <p> 聚合Service降级工场 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/9/15 10:38
 */
@Slf4j
@Component
public class AggregationServiceClientFallbackFactory implements FallbackFactory<AggregationServiceClient> {
    @Override
    public AggregationServiceClient create(Throwable throwable) {
        return (indexName, routing) -> {
            log.error("通过索引{}搜索异常:{}", indexName, throwable);
            return MapUtil.newHashMap(0, false);
        };
    }
}
