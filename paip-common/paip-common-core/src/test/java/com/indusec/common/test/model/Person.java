package com.indusec.common.test.model;

import com.indusec.common.annotation.Sensitive;
import com.indusec.common.model.SensitiveStrategy;
import lombok.Data;

/**
 * 模块名:标题
 * 描述:PAIP com.indusec.common.test.model Person
 *
 * @author: Lee
 * @email: Lee@indusec.com
 * @version: 3.0.0
 * @since: 2022-06-23 16:03
 */
@Data
public class Person {
    /**
     * 真实姓名
     */
    @Sensitive(strategy = SensitiveStrategy.USERNAME)
    private String realName;
    /**
     * 地址
     */
    @Sensitive(strategy = SensitiveStrategy.ADDRESS)
    private String address;
    /**
     * 电话号码
     */
    @Sensitive(strategy = SensitiveStrategy.PHONE)
    private String phoneNumber;
    /**
     * 身份证号码
     */
    @Sensitive(strategy = SensitiveStrategy.ID_CARD)
    private String idCard;
}
