package com.indusec.oauth.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.indusec.db.mapper.SuperMapper;
import com.indusec.oauth.model.Client;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p> Client Mapper </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Mapper
public interface ClientMapper extends SuperMapper<Client> {
    /**
     * 分页列表
     *
     * @param page
     * @param params
     * @return
     */
    List<Client> findList(Page<Client> page, @Param("params") Map<String, Object> params);
}
