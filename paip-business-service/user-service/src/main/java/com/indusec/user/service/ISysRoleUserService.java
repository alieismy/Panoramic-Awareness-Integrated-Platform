package com.indusec.user.service;

import com.indusec.common.model.SysRole;
import com.indusec.common.service.ISuperService;
import com.indusec.user.model.SysRoleUser;

import java.util.List;

/**
 * <p> SysRoleUserService 接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface ISysRoleUserService extends ISuperService<SysRoleUser> {
    int deleteUserRole(Long userId, Long roleId);

    int saveUserRoles(Long userId, Long roleId);

    /**
     * 根据用户id获取角色
     *
     * @param userId
     * @return
     */
    List<SysRole> findRolesByUserId(Long userId);

    /**
     * 根据用户ids 获取
     *
     * @param userIds
     * @return
     */
    List<SysRole> findRolesByUserIds(List<Long> userIds);
}
