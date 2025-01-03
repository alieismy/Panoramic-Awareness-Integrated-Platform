package com.indusec.user.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.indusec.common.model.SysMenu;
import com.indusec.common.service.impl.SuperServiceImpl;
import com.indusec.user.mapper.SysMenuMapper;
import com.indusec.user.model.SysRoleMenu;
import com.indusec.user.service.ISysMenuService;
import com.indusec.user.service.ISysRoleMenuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * <p> SysMenuService 接口实现 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Slf4j
@Service
public class SysMenuServiceImpl extends SuperServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {
    @Resource
    private ISysRoleMenuService roleMenuService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void setMenuToRole(Long roleId, Set<Long> menuIds) {
        roleMenuService.delete(roleId, null);

        if (!CollectionUtils.isEmpty(menuIds)) {
            List<SysRoleMenu> roleMenus = new ArrayList<>(menuIds.size());
            menuIds.forEach(menuId -> roleMenus.add(new SysRoleMenu(roleId, menuId)));
            roleMenuService.saveBatch(roleMenus);
        }
    }

    /**
     * 角色菜单列表
     *
     * @param roleIds
     * @return
     */
    @Override
    public List<SysMenu> findByRoles(Set<Long> roleIds) {
        return roleMenuService.findMenusByRoleIds(roleIds, null);
    }

    /**
     * 角色菜单列表
     *
     * @param roleIds 角色ids
     * @param roleIds 是否菜单
     * @return
     */
    @Override
    public List<SysMenu> findByRoles(Set<Long> roleIds, Integer type) {
        return roleMenuService.findMenusByRoleIds(roleIds, type);
    }

    @Override
    public List<SysMenu> findByRoleCodes(Set<String> roleCodes, Integer type) {
        return roleMenuService.findMenusByRoleCodes(roleCodes, type);
    }

    /**
     * 查询所有菜单
     */
    @Override
    public List<SysMenu> findAll() {
        return baseMapper.selectList(
            new QueryWrapper<SysMenu>().orderByAsc("sort")
        );
    }

    /**
     * 查询所有一级菜单
     */
    @Override
    public List<SysMenu> findOnes() {
        return baseMapper.selectList(
            new QueryWrapper<SysMenu>()
                .eq("type", 1)
                .orderByAsc("sort")
        );
    }
}
