package com.indusec.search.client.feign;

import com.indusec.common.constant.ServiceNameConstants;
import com.indusec.search.client.feign.fallback.SearchServiceClientFallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

/**
 * <p> 聚合服务接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@FeignClient(name = ServiceNameConstants.SEARCH_SERVICE, fallbackFactory = SearchServiceClientFallbackFactory.class, decode404 = true)
public interface AggregationServiceClient {
    /**
     * 查询文档列表
     *
     * @param indexName 索引名
     * @param routing   es的路由
     */
    @GetMapping(value = "/agg/requestStat/{indexName}/{routing}")
    Map<String, Object> requestStatAggregation(@PathVariable("indexName") String indexName, @PathVariable("routing") String routing);
}
