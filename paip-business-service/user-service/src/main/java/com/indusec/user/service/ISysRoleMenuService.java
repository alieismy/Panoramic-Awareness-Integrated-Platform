package com.indusec.user.service;

import com.indusec.common.model.SysMenu;
import com.indusec.common.service.ISuperService;
import com.indusec.user.model.SysRoleMenu;

import java.util.List;
import java.util.Set;

/**
 * <p> SysRoleMenuService接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface ISysRoleMenuService extends ISuperService<SysRoleMenu> {
    int save(Long roleId, Long menuId);

    int delete(Long roleId, Long menuId);

    List<SysMenu> findMenusByRoleIds(Set<Long> roleIds, Integer type);

    List<SysMenu> findMenusByRoleCodes(Set<String> roleCodes, Integer type);
}
