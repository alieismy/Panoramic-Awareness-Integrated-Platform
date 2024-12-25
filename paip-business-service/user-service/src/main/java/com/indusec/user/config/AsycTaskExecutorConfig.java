package com.indusec.user.config;

import com.indusec.common.config.DefaultAsycTaskConfig;
import org.springframework.context.annotation.Configuration;

/**
 * <p> 线程池配置、启用异步 </p>
 *
 * <p> @Async quartz 需要使用 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Configuration
public class AsycTaskExecutorConfig extends DefaultAsycTaskConfig {

}
