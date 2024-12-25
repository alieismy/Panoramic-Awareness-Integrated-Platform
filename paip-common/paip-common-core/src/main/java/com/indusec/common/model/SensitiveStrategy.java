package com.indusec.common.model;

import java.util.function.Function;

/**
 * 模块名:定制脱敏策略
 * 脱敏策略，枚举类，针对不同的数据定制特定的策略，定制不同字段的脱敏规则，比如手机号中间几位用*替代
 *
 * @author: Lee
 * @email: Lee@indusec.com
 * @version: 3.0.0
 * @since: 2022-06-23 15:51
 */
public enum SensitiveStrategy {
    /**
     * 用户名
     */
    USERNAME(s -> s.replaceAll("(\\S)\\S(\\S*)", "$1*$2")),
    /**
     * 身份证
     */
    ID_CARD(s -> s.replaceAll("(\\d{4})\\d{10}(\\w{4})", "$1****$2")),
    /**
     * 手机号
     */
    PHONE(s -> s.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2")),
    /**
     * 地址
     */
    ADDRESS(s -> s.replaceAll("(\\S{3})\\S{2}(\\S*)\\S{2}", "$1****$2****"));


    private final Function<String, String> desensitizer;

    SensitiveStrategy(Function<String, String> desensitizer) {
        this.desensitizer = desensitizer;
    }

    public Function<String, String> desensitizer() {
        return desensitizer;
    }
}