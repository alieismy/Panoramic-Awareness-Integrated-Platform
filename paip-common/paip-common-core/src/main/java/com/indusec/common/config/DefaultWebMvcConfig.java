package com.indusec.common.config;

import com.indusec.common.feign.SysUserFeignClient;
import com.indusec.common.resolver.ClientArgumentResolver;
import com.indusec.common.resolver.TokenArgumentResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

/**
 * <p> 默认SpringMVC拦截器 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/8/5 13:06
 */
public class DefaultWebMvcConfig implements WebMvcConfigurer {
    @Lazy
    @Autowired
    private SysUserFeignClient sysUserClient;

    /**
     * Token参数解析
     *
     * @param argumentResolvers 解析类
     */
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        //注入用户信息
        argumentResolvers.add(new TokenArgumentResolver(sysUserClient));
        //注入应用信息
        argumentResolvers.add(new ClientArgumentResolver());
    }
}
