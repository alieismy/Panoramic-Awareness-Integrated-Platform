package com.indusec.common.lb.chooser;

import org.springframework.cloud.client.ServiceInstance;

import java.util.List;


/**
 * service选择器类
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2022/3/13
 */
public interface IRuleChooser {
    ServiceInstance choose(List<ServiceInstance> instances);
}
