package com.indusec.search.client.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.indusec.common.model.PageResult;
import com.indusec.search.model.LogicDelDto;
import com.indusec.search.model.SearchDto;

import java.util.Map;

/**
 * <p> 搜索客户端接口 </p>
 *
 * <p> Description: ES客户端API比较复杂难懂，通过通用的搜索服务对外提供REST接口供业务系统使用 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/4/24
 */
public interface IQueryService {
    /**
     * 查询文档列表
     *
     * @param indexName 索引名
     * @param searchDto 搜索Dto
     */
    PageResult<JsonNode> stringQuery(String indexName, SearchDto searchDto);

    /**
     * 查询文档列表
     *
     * @param indexName   索引名
     * @param searchDto   搜索Dto
     * @param logicDelDto 逻辑删除Dto
     */
    PageResult<JsonNode> stringQuery(String indexName, SearchDto searchDto, LogicDelDto logicDelDto);

    /**
     * 访问统计聚合查询
     *
     * @param indexName 索引名
     * @param routing   es的路由
     */
    Map<String, Object> requestStatAggregation(String indexName, String routing);
}
