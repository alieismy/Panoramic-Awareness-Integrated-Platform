package com.indusec.user.service;

import com.indusec.common.model.LoginAppUser;
import com.indusec.common.model.PageResult;
import com.indusec.common.model.SysUser;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.HashMap;
import java.util.Map;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * SysUserServiceTest单元测试用例
 *
 * @author: L.J
 */
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class UserServiceTest {
    @Autowired
    private ISysUserService sysUserService;

    @Test
    public void testFindByUsername() {
        LoginAppUser loginAppUser = sysUserService.findByUsername("admin");
        assertThat(loginAppUser).isNotNull();
    }

    @Test
    public void testFindUsers() {
        Map<String, Object> params = new HashMap<>(2);
        params.put("page", 1);
        params.put("limit", 10);
        PageResult<SysUser> page = sysUserService.findUsers(params);
        assertThat(page).isNotNull();
        assertThat(page.getCount()).isGreaterThan(0);
    }
}
