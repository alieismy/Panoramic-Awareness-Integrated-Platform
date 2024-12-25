package com.indusec.common.feign.fallback;

import com.indusec.common.feign.SysUserFeignClient;
import com.indusec.common.model.LoginAppUser;
import com.indusec.common.model.SysUser;
import org.springframework.cloud.openfeign.FallbackFactory;
import lombok.extern.slf4j.Slf4j;

/**
 * <p> userService降级工场 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/2/3 13:06
 */
@Slf4j
public class SysUserClientFallbackFactory implements FallbackFactory<SysUserFeignClient> {
    @Override
    public SysUserFeignClient create(Throwable throwable) {
        return new SysUserFeignClient() {
            @Override
            public SysUser selectByUsername(String username) {
                log.error("通过用户名查询用户异常:{}", username, throwable);
                return new SysUser();
            }

            @Override
            public LoginAppUser findByUsername(String username) {
                log.error("通过用户名查询用户异常:{}", username, throwable);
                return new LoginAppUser();
            }

            @Override
            public LoginAppUser findByMobile(String mobile) {
                log.error("通过手机号查询用户异常:{}", mobile, throwable);
                return new LoginAppUser();
            }

            @Override
            public LoginAppUser findByOpenId(String openId) {
                log.error("通过openId查询用户异常:{}", openId, throwable);
                return new LoginAppUser();
            }
        };
    }
}
