package com.indusec.common.utils.id;

import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;

/**
 * 高效分布式ID生成算法(sequence),基于Snowflake算法优化实现64位自增ID算法。
 * 其中解决时间回拨问题的优化方案如下：
 * 1. 如果发现当前时间少于上次生成id的时间(时间回拨)，着计算回拨的时间差
 * 2. 如果时间差(offset)小于等于5ms，着等待 offset * 2 的时间再生成
 * 3. 如果offset大于5，则直接抛出异常
 *
 * @author: L.J
 * @date 2019/3/5
 */
public class IdGenerator {
    private static Sequence WORKER = new Sequence();

    public static long getId() {
        return WORKER.nextId();
    }

    public static String getIdStr() {
        return String.valueOf(WORKER.nextId());
    }

    /**
     * 返回使用ThreadLocalRandm的UUID，比默认的UUID性能更优
     *
     * @return
     */
    public static UUID fastUUID() {
        ThreadLocalRandom random = ThreadLocalRandom.current();
        return new UUID(random.nextLong(), random.nextLong());
    }

    /**
     * 封装JDK自带的UUID, 通过Random数字生成, 中间无-分割.
     *
     * @param hasPrefix
     * @return
     */
    public static String simpleUUID(boolean hasPrefix) {
        String uuid = UUID.randomUUID().toString();
        if (!hasPrefix) {
            uuid = uuid.replaceAll("-", "");
        }
        return uuid;
    }

}
