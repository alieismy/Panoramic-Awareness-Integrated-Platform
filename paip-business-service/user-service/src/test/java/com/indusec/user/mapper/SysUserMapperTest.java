package com.indusec.user.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.indusec.common.model.SysUser;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * SysUserMapperTest单元测试用例
 *
 * @author: L.J
 */
@ExtendWith(SpringExtension.class)
@SpringBootTest
public class SysUserMapperTest {
    @Resource
    private SysUserMapper sysUserMapper;

    @Test
    public void testFindByUsername() {
        List<SysUser> users = sysUserMapper.selectList(
            new QueryWrapper<SysUser>().eq("username", "admin")
        );
        assertThat(users.size()).isGreaterThan(0);
    }
}
