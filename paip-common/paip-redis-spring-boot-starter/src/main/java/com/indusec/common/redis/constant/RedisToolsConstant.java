package com.indusec.common.redis.constant;

/**
 * <p> Redis 工具常量 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2018/5/21 11:59
 */
public class RedisToolsConstant {
    /**
     * single Redis
     */
    public final static int SINGLE = 1;
    /**
     * Redis cluster
     */
    public final static int CLUSTER = 2;

    private RedisToolsConstant() {
        throw new IllegalStateException("Utility class");
    }
}
