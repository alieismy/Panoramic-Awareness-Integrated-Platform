package com.indusec.log.trace;

import com.indusec.log.properties.TraceProperties;
import cn.hutool.core.util.StrUtil;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * <p> web过滤器，生成日志链路追踪id，并赋值MDC </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/10/14
 */
@Component
@ConditionalOnClass(value = {HttpServletRequest.class, OncePerRequestFilter.class})
@Order(value = MDCTraceUtils.FILTER_ORDER)
public class WebTraceFilter extends OncePerRequestFilter {
    @Resource
    private TraceProperties traceProperties;

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) {
        return !traceProperties.getEnable();
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                    FilterChain filterChain) throws IOException, ServletException {
        try {
            String traceId = request.getHeader(MDCTraceUtils.TRACE_ID_HEADER);
            String spanId = request.getHeader(MDCTraceUtils.SPAN_ID_HEADER);
            if (StrUtil.isEmpty(traceId)) {
                MDCTraceUtils.addTrace();
            } else {
                MDCTraceUtils.putTrace(traceId, spanId);
            }
            filterChain.doFilter(request, response);
        } finally {
            MDCTraceUtils.removeTrace();
        }
    }
}
