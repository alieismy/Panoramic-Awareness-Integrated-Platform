package com.indusec.user.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.ObjectUtil;
import com.indusec.common.annotation.LoginUser;
import com.indusec.common.constant.CommonConstant;
import com.indusec.common.model.PageResult;
import com.indusec.common.model.RestResult;
import com.indusec.common.model.SysMenu;
import com.indusec.common.model.SysRole;
import com.indusec.common.model.SysUser;
import com.indusec.user.service.ISysMenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * <p> 菜单管理 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@RestController
@Api(tags = "菜单模块api")
@Slf4j
@RequestMapping("/menus")
public class SysMenuController {
    @Autowired
    private ISysMenuService menuService;

    /**
     * 两层循环实现建树
     *
     * @param sysMenus
     * @return
     */
    public static List<SysMenu> treeBuilder(List<SysMenu> sysMenus) {
        List<SysMenu> menus = new ArrayList<>();
        for (SysMenu sysMenu : sysMenus) {
            if (ObjectUtil.equal(-1L, sysMenu.getParentId())) {
                menus.add(sysMenu);
            }
            for (SysMenu menu : sysMenus) {
                if (menu.getParentId().equals(sysMenu.getId())) {
                    if (sysMenu.getSubMenus() == null) {
                        sysMenu.setSubMenus(new ArrayList<>());
                    }
                    sysMenu.getSubMenus().add(menu);
                }
            }
        }
        return menus;
    }

    /**
     * 删除菜单
     *
     * @param id
     */
    @ApiOperation(value = "删除菜单")
    @DeleteMapping("/{id}")
    public RestResult delete(@PathVariable Long id) {
        try {
            menuService.removeById(id);
            return RestResult.succeed("操作成功");
        } catch (Exception ex) {
            log.error("memu-delete-error", ex);
            return RestResult.failed("操作失败");
        }
    }

    @ApiOperation(value = "根据roleId获取对应的菜单")
    @GetMapping("/{roleId}/menus")
    public List<Map<String, Object>> findMenusByRoleId(@PathVariable Long roleId) {
        Set<Long> roleIds = new HashSet<>();
        roleIds.add(roleId);
        //获取该角色对应的菜单
        List<SysMenu> roleMenus = menuService.findByRoles(roleIds);
        //全部的菜单列表
        List<SysMenu> allMenus = menuService.findAll();
        List<Map<String, Object>> authTrees = new ArrayList<>();

        Map<Long, SysMenu> roleMenusMap = roleMenus.stream().collect(Collectors.toMap(SysMenu::getId, SysMenu -> SysMenu));

        for (SysMenu sysMenu : allMenus) {
            Map<String, Object> authTree = new HashMap<>();
            authTree.put("id", sysMenu.getId());
            authTree.put("name", sysMenu.getName());
            authTree.put("pId", sysMenu.getParentId());
            authTree.put("open", true);
            authTree.put("checked", false);
            if (roleMenusMap.get(sysMenu.getId()) != null) {
                authTree.put("checked", true);
            }
            authTrees.add(authTree);
        }
        return authTrees;
    }

    @ApiOperation(value = "根据roleCodes获取对应的权限")
    @SuppressWarnings("unchecked")
    @Cacheable(value = "menu", key = "#roleCodes")
    @GetMapping("/{roleCodes}")
    public List<SysMenu> findMenuByRoles(@PathVariable String roleCodes) {
        List<SysMenu> result = null;
        if (StringUtils.isNotEmpty(roleCodes)) {
            // TODO: 以后去掉cn.hutool.core.convert.Convert.toCollection
            Set<String> roleSet = (Set<String>) Convert.toCollection(HashSet.class, String.class, roleCodes);
            result = menuService.findByRoleCodes(roleSet, CommonConstant.PERMISSION);
        }
        return result;
    }

    /**
     * 给角色分配菜单
     */
    @ApiOperation(value = "角色分配菜单")
    @PostMapping("/granted")
    public RestResult setMenuToRole(@RequestBody SysMenu sysMenu) {
        menuService.setMenuToRole(sysMenu.getRoleId(), sysMenu.getMenuIds());
        return RestResult.succeed("操作成功");
    }

    @ApiOperation(value = "查询所有菜单")
    @GetMapping("/findAlls")
    public PageResult<SysMenu> findAlls() {
        List<SysMenu> list = menuService.findAll();
        return PageResult.<SysMenu>builder().data(list).code(0).count((long) list.size()).build();
    }

    @ApiOperation(value = "获取菜单以及顶级菜单")
    @GetMapping("/findOnes")
    public PageResult<SysMenu> findOnes() {
        List<SysMenu> list = menuService.findOnes();
        return PageResult.<SysMenu>builder().data(list).code(0).count((long) list.size()).build();
    }

    /**
     * 添加菜单 或者 更新
     *
     * @param menu
     * @return
     */
    @ApiOperation(value = "新增菜单")
    @PostMapping("saveOrUpdate")
    public RestResult saveOrUpdate(@RequestBody SysMenu menu) {
        try {
            menuService.saveOrUpdate(menu);
            return RestResult.succeed("操作成功");
        } catch (Exception ex) {
            log.error("memu-saveOrUpdate-error", ex);
            return RestResult.failed("操作失败");
        }
    }

    /**
     * 当前登录用户的菜单
     *
     * @return
     */
    @GetMapping("/current")
    @ApiOperation(value = "查询当前用户菜单")
    public List<SysMenu> findMyMenu(@LoginUser SysUser user) {
        List<SysRole> roles = user.getRoles();
        if (CollectionUtil.isEmpty(roles)) {
            return Collections.emptyList();
        }
        List<SysMenu> menus = menuService.findByRoleCodes(roles.stream().map(SysRole::getCode).collect(Collectors.toSet()), CommonConstant.MENU);
        return treeBuilder(menus);
    }
}
