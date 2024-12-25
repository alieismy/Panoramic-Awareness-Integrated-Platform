package com.indusec.log.controller;

import com.indusec.search.client.service.IQueryService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * <p> 访问统计 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/5/8
 */
@RestController
public class AggregationController {
    @Autowired
    private IQueryService queryService;

    @ApiOperation(value = "访问统计")
    @GetMapping(value = "/requestStat")
    public Map<String, Object> requestStatAgg() {
        return queryService.requestStatAggregation("point-log-*", "request-statistics");
    }
}
