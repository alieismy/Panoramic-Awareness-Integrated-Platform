package com.indusec.log.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.indusec.common.model.PageResult;
import com.indusec.log.model.TraceLog;
import com.indusec.log.service.TraceLogService;
import com.indusec.search.client.service.IQueryService;
import com.indusec.search.model.SearchDto;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 系统日志
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@RestController
public class SysLogController {
    /**
     * 系统日志索引名
     */
    private static final String SYS_LOG_INDEXNAME = "sys-log-*";

    @Resource
    private IQueryService queryService;

    @Resource
    private TraceLogService traceLogService;

    @ApiOperation(value = "系统日志全文搜索列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "queryStr", value = "搜索关键字", dataType = "String"),
            @ApiImplicitParam(name = "sortCol", value = "排序字段", dataType = "String"),
            @ApiImplicitParam(name = "sortOrder", value = "排序顺序", dataType = "String"),
            @ApiImplicitParam(name = "isHighlighter", value = "是否显示高亮", dataType = "String")
    })
    @GetMapping(value = "/sysLog")
    public PageResult<JsonNode> sysLog(SearchDto searchDto) {
        return queryService.stringQuery(SYS_LOG_INDEXNAME, searchDto);
    }

    @ApiOperation(value = "系统日志链路列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "queryStr", value = "搜索关键字", dataType = "String"),
            @ApiImplicitParam(name = "sortCol", value = "排序字段", dataType = "String"),
            @ApiImplicitParam(name = "sortOrder", value = "排序顺序", dataType = "String"),
            @ApiImplicitParam(name = "isHighlighter", value = "是否显示高亮", dataType = "String")
    })
    @GetMapping(value = "/traceLog")
    public PageResult<TraceLog> traceLog(SearchDto searchDto) {
        PageResult<JsonNode> pageResult = queryService.stringQuery(SYS_LOG_INDEXNAME, searchDto);
        List<JsonNode> jsonNodeList = pageResult.getData();
        List<TraceLog> logList;
        if (jsonNodeList != null) {
            logList = traceLogService.transTraceLog(jsonNodeList);
        } else {
            logList = new ArrayList<>(0);
        }
        return PageResult.<TraceLog>builder().data(logList).code(0).count((long) logList.size()).build();
    }
}
