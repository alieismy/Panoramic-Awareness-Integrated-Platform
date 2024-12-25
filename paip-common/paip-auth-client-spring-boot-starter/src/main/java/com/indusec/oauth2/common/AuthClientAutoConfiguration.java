package com.indusec.oauth2.common;

import com.indusec.oauth2.common.properties.SecurityProperties;
import com.indusec.oauth2.common.properties.TokenStoreProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.ComponentScan;

/**
 * <p> Security Properties AutoConfiguration </p>
 *
 * <p> Description: 鉴权自动配置 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2021/7/24
 */
@EnableConfigurationProperties({SecurityProperties.class, TokenStoreProperties.class})
@ComponentScan
public class AuthClientAutoConfiguration {
}
