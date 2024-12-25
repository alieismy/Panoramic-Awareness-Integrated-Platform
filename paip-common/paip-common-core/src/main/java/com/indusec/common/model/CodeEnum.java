package com.indusec.common.model;

/**
 * <p> Code Enum </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/9/15 10:38
 */
public enum CodeEnum {
    /**
     * 成功
     */
    SUCCESS(0),
    /**
     * 失败
     */
    ERROR(1);

    private Integer code;

    CodeEnum(Integer code) {
        this.code = code;
    }

    public Integer getCode() {
        return code;
    }
}
