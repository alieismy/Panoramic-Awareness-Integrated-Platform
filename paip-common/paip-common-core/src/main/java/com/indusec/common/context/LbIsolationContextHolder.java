package com.indusec.common.context;

import com.alibaba.ttl.TransmittableThreadLocal;

/**
 * <p> 负载均衡策略Holder </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/9/2 13:06
 */
public class LbIsolationContextHolder {
    private static final ThreadLocal<String> VERSION_CONTEXT = new TransmittableThreadLocal<>();

    public static String getVersion() {
        return VERSION_CONTEXT.get();
    }

    public static void setVersion(String version) {
        VERSION_CONTEXT.set(version);
    }

    public static void clear() {
        VERSION_CONTEXT.remove();
    }
}
