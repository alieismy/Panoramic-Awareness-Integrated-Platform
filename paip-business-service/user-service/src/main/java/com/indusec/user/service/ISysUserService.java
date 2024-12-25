package com.indusec.user.service;

import com.indusec.common.model.LoginAppUser;
import com.indusec.common.model.PageResult;
import com.indusec.common.model.RestResult;
import com.indusec.common.model.SysRole;
import com.indusec.common.model.SysUser;
import com.indusec.common.service.ISuperService;
import com.indusec.user.model.SysUserExcel;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * <p> SysUserService 接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface ISysUserService extends ISuperService<SysUser> {
    /**
     * 获取UserDetails对象
     *
     * @param username
     * @return
     */
    LoginAppUser findByUsername(String username);

    LoginAppUser findByOpenId(String username);

    LoginAppUser findByMobile(String username);

    /**
     * 通过SysUser 转换为 LoginAppUser，把roles和permissions也查询出来
     *
     * @param sysUser
     * @return
     */
    LoginAppUser getLoginAppUser(SysUser sysUser);

    /**
     * 根据用户名查询用户
     *
     * @param username
     * @return
     */
    SysUser selectByUsername(String username);

    /**
     * 根据手机号查询用户
     *
     * @param mobile
     * @return
     */
    SysUser selectByMobile(String mobile);

    /**
     * 根据openId查询用户
     *
     * @param openId
     * @return
     */
    SysUser selectByOpenId(String openId);

    /**
     * 用户分配角色
     *
     * @param id
     * @param roleIds
     */
    void setRoleToUser(Long id, Set<Long> roleIds);

    /**
     * 更新密码
     *
     * @param id
     * @param oldPassword
     * @param newPassword
     * @return
     */
    RestResult updatePassword(Long id, String oldPassword, String newPassword);

    /**
     * 用户列表
     *
     * @param params
     * @return
     */
    PageResult<SysUser> findUsers(Map<String, Object> params);

    /**
     * 用户角色列表
     *
     * @param userId
     * @return
     */
    List<SysRole> findRolesByUserId(Long userId);

    /**
     * 状态变更
     *
     * @param params
     * @return
     */
    RestResult updateEnabled(Map<String, Object> params);

    /**
     * 查询全部用户
     *
     * @param params
     * @return
     */
    List<SysUserExcel> findAllUsers(Map<String, Object> params);

    RestResult saveOrUpdateUser(SysUser sysUser) throws Exception;

    /**
     * 删除用户
     */
    boolean delUser(Long id);
}
