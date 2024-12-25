package com.indusec.oauth.service;

import com.indusec.common.model.RestResult;

/**
 * <p> 验证码Service接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2018/12/10
 */
public interface IValidateCodeService {
    /**
     * 保存图形验证码
     *
     * @param deviceId  前端唯一标识
     * @param imageCode 验证码
     */
    void saveImageCode(String deviceId, String imageCode);

    RestResult sendSmsCode(String mobile);

    /**
     * 获取验证码
     *
     * @param deviceId 前端唯一标识/手机号
     */
    String getCode(String deviceId);

    /**
     * 删除验证码
     *
     * @param deviceId 前端唯一标识/手机号
     */
    void remove(String deviceId);

    /**
     * 验证验证码
     */
    void validate(String deviceId, String validCode);
}
