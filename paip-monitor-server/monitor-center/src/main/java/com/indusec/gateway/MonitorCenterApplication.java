package com.indusec.gateway;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * <p> Monitor Application </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@EnableAdminServer
@EnableDiscoveryClient
@SpringBootApplication
public class MonitorCenterApplication {
    public static void main(String[] args) {
        SpringApplication.run(MonitorCenterApplication.class, args);
    }
}
