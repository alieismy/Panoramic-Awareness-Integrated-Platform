package com.indusec.oauth.service;

import com.indusec.common.model.PageResult;
import com.indusec.common.model.RestResult;
import com.indusec.common.service.ISuperService;
import com.indusec.oauth.model.Client;

import java.util.Map;

/**
 * <p> Client Service接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface IClientService extends ISuperService<Client> {
    RestResult saveClient(Client clientDto) throws Exception;

    /**
     * 查询应用列表
     *
     * @param params
     * @param isPage 是否分页
     */
    PageResult<Client> listClient(Map<String, Object> params, boolean isPage);

    void delClient(long id);
    Client loadClientByClientId(String clientId);
}
