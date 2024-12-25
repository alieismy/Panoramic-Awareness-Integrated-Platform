package com.indusec.gateway.filter;

import com.indusec.log.properties.TraceProperties;
import com.indusec.log.trace.MDCTraceUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

/**
 * <p> 生成日志链路追踪id，并传入header中 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/7
 */
@Component
public class TraceFilter implements GlobalFilter, Ordered {
    @Autowired
    private TraceProperties traceProperties;

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        if (traceProperties.getEnable()) {
            //链路追踪id
            MDCTraceUtils.addTrace();

            ServerHttpRequest serverHttpRequest = exchange.getRequest().mutate()
                    .headers(h -> {
                        h.add(MDCTraceUtils.TRACE_ID_HEADER, MDCTraceUtils.getTraceId());
                        h.add(MDCTraceUtils.SPAN_ID_HEADER, MDCTraceUtils.getNextSpanId());
                    })
                    .build();

            ServerWebExchange build = exchange.mutate().request(serverHttpRequest).build();
            return chain.filter(build);
        }
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return Ordered.HIGHEST_PRECEDENCE;
    }
}
