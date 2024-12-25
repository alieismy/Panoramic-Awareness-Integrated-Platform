package com.indusec.user.controller;

import com.indusec.common.model.PageResult;
import com.indusec.common.model.RestResult;
import com.indusec.common.model.SysRole;
import com.indusec.user.service.ISysRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * <p> 角色管理 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Slf4j
@RestController
@Api(tags = "角色模块api")
public class SysRoleController {
    @Autowired
    private ISysRoleService sysRoleService;

    /**
     * 后台管理查询角色
     *
     * @param params
     * @return
     */
    @ApiOperation(value = "后台管理查询角色")
    @GetMapping("/roles")
    public PageResult<SysRole> findRoles(@RequestParam Map<String, Object> params) {
        return sysRoleService.findRoles(params);
    }

    /**
     * 用户管理查询所有角色
     *
     * @return
     */
    @ApiOperation(value = "后台管理查询角色")
    @GetMapping("/allRoles")
    public RestResult<List<SysRole>> findAll() {
        List<SysRole> result = sysRoleService.findAll();
        return RestResult.succeed(result);
    }

    /**
     * 角色新增或者更新
     *
     * @param sysRole
     * @return
     */
    @PostMapping("/roles/saveOrUpdate")
    public RestResult saveOrUpdate(@RequestBody SysRole sysRole) throws Exception {
        return sysRoleService.saveOrUpdateRole(sysRole);
    }

    /**
     * 后台管理删除角色
     * delete /role/1
     *
     * @param id
     */
    @ApiOperation(value = "后台管理删除角色")
    @DeleteMapping("/roles/{id}")
    public RestResult deleteRole(@PathVariable Long id) {
        try {
            if (id == 1L) {
                return RestResult.failed("管理员不可以删除");
            }
            sysRoleService.deleteRole(id);
            return RestResult.succeed("操作成功");
        } catch (Exception e) {
            log.error("role-deleteRole-error", e);
            return RestResult.failed("操作失败");
        }
    }
}
