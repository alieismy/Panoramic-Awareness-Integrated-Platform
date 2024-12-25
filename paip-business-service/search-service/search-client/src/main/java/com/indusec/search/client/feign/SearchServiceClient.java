package com.indusec.search.client.feign;

import com.fasterxml.jackson.databind.JsonNode;
import com.indusec.common.constant.ServiceNameConstants;
import com.indusec.common.model.PageResult;
import com.indusec.search.client.feign.fallback.SearchServiceClientFallbackFactory;
import com.indusec.search.model.SearchDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * <p> 查询服务接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@FeignClient(name = ServiceNameConstants.SEARCH_SERVICE, fallbackFactory = SearchServiceClientFallbackFactory.class, decode404 = true)
public interface SearchServiceClient {
    /**
     * 查询文档列表
     *
     * @param indexName 索引名
     * @param searchDto 搜索Dto
     */
    @PostMapping(value = "/search/{indexName}")
    PageResult<JsonNode> stringQuery(@PathVariable("indexName") String indexName, @RequestBody SearchDto searchDto);
}
