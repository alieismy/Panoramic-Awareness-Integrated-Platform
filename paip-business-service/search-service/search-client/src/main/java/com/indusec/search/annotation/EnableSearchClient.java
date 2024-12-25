package com.indusec.search.annotation;

import com.indusec.search.client.feign.fallback.SearchServiceClientFallbackFactory;
import com.indusec.search.client.service.impl.QueryServiceImpl;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Import;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <p> 控制是否需要全文搜索服务，加载搜索中心客户端的Service </p>
 *
 * <p> Description：需要实时同步数据到ElasticSearch，并建对应index </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@EnableFeignClients(basePackages = "com.indusec")
@Import({SearchServiceClientFallbackFactory.class, QueryServiceImpl.class})
public @interface EnableSearchClient {

}
