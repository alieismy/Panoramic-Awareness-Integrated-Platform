package com.indusec.common.model;

/**
 * Encrypt
 * 此实体类的数据都表示需要加解密的
 *
 * @author Lee <a href="mailto:Lee@indusec.com"/>
 * @version: 3.0.0
 * @since: 2022-07-30 10:07
 */
public class Encrypt {
    private String value;

    public Encrypt() {
    }

    public Encrypt(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
