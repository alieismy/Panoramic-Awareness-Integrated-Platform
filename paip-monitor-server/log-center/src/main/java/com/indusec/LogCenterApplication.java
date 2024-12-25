package com.indusec;

import com.indusec.search.annotation.EnableSearchClient;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * <p> LogCenter Application </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@EnableDiscoveryClient
@EnableSearchClient
@SpringBootApplication
public class LogCenterApplication {
    public static void main(String[] args) {
        SpringApplication.run(LogCenterApplication.class, args);
    }
}
