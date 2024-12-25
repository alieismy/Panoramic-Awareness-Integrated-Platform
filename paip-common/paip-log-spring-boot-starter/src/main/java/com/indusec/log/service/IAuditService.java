package com.indusec.log.service;

import com.indusec.log.model.Audit;

/**
 * <p> 审计日志接口 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/2/3 13:06
 */
public interface IAuditService {
    void save(Audit audit);
}
