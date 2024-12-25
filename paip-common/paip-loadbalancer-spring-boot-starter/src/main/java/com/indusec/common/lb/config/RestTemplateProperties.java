package com.indusec.common.lb.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * <p> RestTemplate 配置 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2017/11/17
 */
@Setter
@Getter
@ConfigurationProperties(prefix = "paip.rest-template")
public class RestTemplateProperties {
    /**
     * 最大链接数200
     */
    private int maxTotal = 500;
    /**
     * 同路由最大并发数50
     */
    private int maxPerRoute = 200;
    /**
     * 读取超时时间 ms 35000
     */
    private int readTimeout = 30000;
    /**
     * 链接超时时间 ms 10000
     */
    private int connectTimeout = 30000;
}
