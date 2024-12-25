package com.indusec.search.client.service.impl;

import com.fasterxml.jackson.databind.JsonNode;
import com.indusec.common.model.PageResult;
import com.indusec.search.client.feign.AggregationServiceClient;
import com.indusec.search.client.feign.SearchServiceClient;
import com.indusec.search.client.service.IQueryService;
import com.indusec.search.model.LogicDelDto;
import com.indusec.search.model.SearchDto;
import org.apache.commons.lang3.StringUtils;

import javax.annotation.Resource;
import java.util.Map;

/**
 * <p> 搜索客户端Service </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/4/24
 */
public class QueryServiceImpl implements IQueryService {
    @Resource
    private SearchServiceClient searchService;

    @Resource
    private AggregationServiceClient aggregationService;

    @Override
    public PageResult<JsonNode> stringQuery(String indexName, SearchDto searchDto) {
        return stringQuery(indexName, searchDto, null);
    }

    @Override
    public PageResult<JsonNode> stringQuery(String indexName, SearchDto searchDto, LogicDelDto logicDelDto) {
        setLogicDelQueryStr(searchDto, logicDelDto);
        return searchService.stringQuery(indexName, searchDto);
    }

    /**
     * 拼装逻辑删除的条件
     *
     * @param searchDto   搜索DTO
     * @param logicDelDto 逻辑删除DTO
     */
    private void setLogicDelQueryStr(SearchDto searchDto, LogicDelDto logicDelDto) {
        if (logicDelDto != null
            && StringUtils.isNotEmpty(logicDelDto.getLogicDelField())
            && StringUtils.isNotEmpty(logicDelDto.getLogicNotDelValue())) {
            String result;
            //搜索条件
            String queryStr = searchDto.getQueryStr();
            //拼凑逻辑删除的条件
            String logicStr = logicDelDto.getLogicDelField() + ":" + logicDelDto.getLogicNotDelValue();
            if (StringUtils.isNotEmpty(queryStr)) {
                result = "(" + queryStr + ") AND " + logicStr;
            } else {
                result = logicStr;
            }
            searchDto.setQueryStr(result);
        }
    }

    /**
     * 访问统计聚合查询
     *
     * @param indexName 索引名
     * @param routing   es的路由
     */
    @Override
    public Map<String, Object> requestStatAggregation(String indexName, String routing) {
        return aggregationService.requestStatAggregation(indexName, routing);
    }
}
