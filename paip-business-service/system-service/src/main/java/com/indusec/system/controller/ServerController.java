package com.indusec.system.controller;

import com.indusec.common.model.RestResult;
import com.indusec.system.model.server.ServerMonitor;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p> 系统管理-服务器监控 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/10/15
 */
@Slf4j
@RestController
@Api(tags = "系统管理模块API")
@RequestMapping("/system")
public class ServerController {

    @GetMapping("/monitor")
    @ApiOperation(value = "获取服务器监控信息")
    public RestResult<ServerMonitor> getServerMonitorInfo() throws Exception {
        ServerMonitor server = new ServerMonitor();
        server.copyTo();

        return RestResult.succeed(server);
    }
}
