package com.indusec.user.service;

import com.indusec.common.model.PageResult;
import com.indusec.common.model.RestResult;
import com.indusec.common.model.SysRole;
import com.indusec.common.service.ISuperService;

import java.util.List;
import java.util.Map;

/**
 * <p> SysRoleService 接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface ISysRoleService extends ISuperService<SysRole> {
    void saveRole(SysRole sysRole) throws Exception;

    void deleteRole(Long id);

    /**
     * 角色列表
     *
     * @param params
     * @return
     */
    PageResult<SysRole> findRoles(Map<String, Object> params);

    /**
     * 新增或更新角色
     *
     * @param sysRole
     * @return Result
     */
    RestResult saveOrUpdateRole(SysRole sysRole) throws Exception;

    /**
     * 查询所有角色
     *
     * @return
     */
    List<SysRole> findAll();
}
