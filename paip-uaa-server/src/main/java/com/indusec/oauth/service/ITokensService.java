package com.indusec.oauth.service;

import com.indusec.common.model.PageResult;
import com.indusec.oauth.model.TokenVo;

import java.util.Map;

/**
 * <p> Tokens Service接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface ITokensService {
    /**
     * 查询token列表
     *
     * @param params   请求参数
     * @param clientId 应用id
     */
    PageResult<TokenVo> listTokens(Map<String, Object> params, String clientId);
}
