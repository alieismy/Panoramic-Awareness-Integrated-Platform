package com.indusec.common.config;

import com.indusec.common.utils.security.PwdEncoderUtil;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * <p> 密码工具类 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/2/3 13:06
 */
public class DefaultPasswordConfig {
    /**
     * 装配BCryptPasswordEncoder用户密码的匹配
     *
     * @return
     */
    @Bean
    @ConditionalOnMissingBean
    public PasswordEncoder passwordEncoder() {
        // oauth_client_details字段中client_secret字段的数据加密
        //return new BCryptPasswordEncoder();
        return PwdEncoderUtil.getDelegatingPasswordEncoder("bcrypt");
    }
}
