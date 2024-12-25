package com.indusec.common.test.sensitive;

import com.indusec.common.test.model.Person;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 模块名:标题
 * 描述:PAIP com.indusec.common.test.sensitive TestController
 *
 * @author: Lee
 * @email: Lee@indusec.com
 * @version: 3.0.0
 * @since: 2022-06-23 16:04
 */
@RestController
public class TestSensitive {
    @GetMapping("/test")
    public Person test() {
        Person user = new Person();
        user.setRealName("不才陈某");
        user.setPhoneNumber("19796328206");
        user.setAddress("浙江省杭州市....");
        user.setIdCard("4333333333334334333");
        return user;
    }
}
