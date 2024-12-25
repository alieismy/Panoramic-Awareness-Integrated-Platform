package com.indusec.search.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.indusec.common.model.PageResult;
import com.indusec.search.model.SearchDto;

import java.io.IOException;

/**
 * <p> 通用搜索 接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/4/24
 */
public interface ISearchService {
    /**
     * StringQuery通用搜索
     *
     * @param indexName 索引名
     * @param searchDto 搜索Dto
     * @return
     */
    PageResult<JsonNode> stringQuery(String indexName, SearchDto searchDto) throws IOException;
}
