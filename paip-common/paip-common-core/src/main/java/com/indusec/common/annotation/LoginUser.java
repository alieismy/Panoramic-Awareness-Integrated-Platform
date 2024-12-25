package com.indusec.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <p> 请求的方法参数SysUser上添加该注解，则注入当前登录人信息 </p>
 *
 * <p>
 * 例1：public void test(@LoginUser SysUser user) //只有username 和 roles
 * 例2：public void test(@LoginUser(isFull = true) SysUser user) //能获取SysUser对象的所有信息
 * </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2018/7/24 16:44
 */
@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface LoginUser {
    /**
     * 是否查询SysUser对象所有信息，true则通过rpc接口查询
     */
    boolean isFull() default false;
}
