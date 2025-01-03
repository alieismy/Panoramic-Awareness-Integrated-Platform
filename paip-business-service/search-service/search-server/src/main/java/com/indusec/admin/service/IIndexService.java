package com.indusec.admin.service;

import com.indusec.admin.model.IndexDto;
import com.indusec.common.model.PageResult;

import java.io.IOException;
import java.util.Map;

/**
 * <p> 索引服务接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/4/23
 */
public interface IIndexService {
    /**
     * 创建索引
     */
    boolean create(IndexDto indexDto) throws IOException;

    /**
     * 删除索引
     *
     * @param indexName 索引名
     */
    boolean delete(String indexName) throws IOException;

    /**
     * 索引列表
     *
     * @param queryStr 搜索字符串
     * @param indices  默认显示的索引名
     */
    PageResult<Map<String, String>> list(String queryStr, String indices) throws IOException;

    /**
     * 显示索引明细
     *
     * @param indexName 索引名
     */
    Map<String, Object> show(String indexName) throws IOException;
}
