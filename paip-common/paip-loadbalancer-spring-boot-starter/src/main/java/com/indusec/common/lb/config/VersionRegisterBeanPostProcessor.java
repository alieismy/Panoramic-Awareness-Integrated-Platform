package com.indusec.common.lb.config;

import cn.hutool.core.util.StrUtil;
import com.alibaba.cloud.nacos.NacosDiscoveryProperties;
import com.indusec.common.constant.CommonConstant;
import com.indusec.common.constant.ConfigConstants;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.BeanPostProcessor;


/**
 * 将版本注册到注册中心的组件
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2022/3/20
 */
public class VersionRegisterBeanPostProcessor implements BeanPostProcessor {
    @Value("${" + ConfigConstants.CONFIG_LOADBALANCE_VERSION + ":}")
    private String version;

    @Override
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        if (bean instanceof NacosDiscoveryProperties && StrUtil.isNotBlank(version)) {
            NacosDiscoveryProperties nacosDiscoveryProperties = (NacosDiscoveryProperties) bean;
            nacosDiscoveryProperties.getMetadata().putIfAbsent(CommonConstant.METADATA_VERSION, version);
        }
        return bean;
    }
}
