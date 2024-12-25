package com.indusec;

import com.indusec.common.lb.annotation.EnableFeignInterceptor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.flyway.FlywayAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * <p> AuthServer Application </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@EnableFeignClients
@EnableFeignInterceptor
@EnableDiscoveryClient
//@EnableRedisHttpSession
@SpringBootApplication(exclude = {FlywayAutoConfiguration.class})
public class UaaServerApplication {
    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(UaaServerApplication.class);
        application.setEnvironmentPrefix("paip-uaa");
        application.run(args);
    }
}
