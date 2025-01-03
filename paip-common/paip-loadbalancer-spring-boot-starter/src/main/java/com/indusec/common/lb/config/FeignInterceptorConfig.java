package com.indusec.common.lb.config;

import com.indusec.common.constant.CommonConstant;
import com.indusec.common.constant.SecurityConstants;
import com.indusec.common.context.TenantContextHolder;
import feign.RequestInterceptor;
import cn.hutool.core.util.StrUtil;
import org.slf4j.MDC;
import org.springframework.context.annotation.Bean;

/**
 * <p> feign拦截器，只包含基础数据 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public class FeignInterceptorConfig {
    /**
     * 使用feign client访问别的微服务时，将上游传过来的client、traceid等信息放入header传递给下一个服务
     */
    @Bean
    public RequestInterceptor baseFeignInterceptor() {
        return template -> {
            //传递client
            String tenant = TenantContextHolder.getTenant();
            if (StrUtil.isNotEmpty(tenant)) {
                template.header(SecurityConstants.TENANT_HEADER, tenant);
            }

            //传递日志traceId
            //String traceId = MDC.get(CommonConstant.LOG_TRACE_ID);
            //if (StringUtils.isNotEmpty(traceId)) {
            //    template.header(CommonConstant.TRACE_ID_HEADER, traceId);
            //}
        };
    }
}
