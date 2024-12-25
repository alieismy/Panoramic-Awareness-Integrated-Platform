package com.indusec.system.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.indusec.db.mapper.SuperMapper;
import com.indusec.system.model.server.ServerMonitor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p> 服务器监控信息 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/10/15
 */
@Mapper
public interface ServerMapper extends SuperMapper<ServerMonitor> {
    /**
     * 分页列表 TODO: 仅为示例
     *
     * @param page
     * @param params
     * @return
     */
    List<ServerMonitor> findList(Page<ServerMonitor> page, @Param("f") Map<String, Object> params);
}
