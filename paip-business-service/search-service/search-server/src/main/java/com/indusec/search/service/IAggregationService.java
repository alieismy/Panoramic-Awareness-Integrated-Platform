package com.indusec.search.service;

import java.io.IOException;
import java.util.Map;

/**
 * <p> 聚合查询 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/4/24
 */
public interface IAggregationService {
    /**
     * 访问统计聚合查询
     *
     * @param indexName 索引名
     * @param routing   es的路由
     * @return
     */
    Map<String, Object> requestStatAgg(String indexName, String routing) throws IOException;
}
