package com.indusec.log.properties;

import com.zaxxer.hikari.HikariConfig;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * <p> 日志数据源配置 </p>
 *
 * <p> logType=db时生效(非必须)，如果不配置则使用当前数据源 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/2/3 13:06
 */
@Setter
@Getter
@ConfigurationProperties(prefix = "paip.audit-log.datasource")
public class LogDbProperties extends HikariConfig {
}
