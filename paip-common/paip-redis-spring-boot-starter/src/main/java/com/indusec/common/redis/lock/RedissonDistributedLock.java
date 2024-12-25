package com.indusec.common.redis.lock;

import com.indusec.common.constant.CommonConstant;
import com.indusec.common.exception.LockException;
import com.indusec.common.lock.AbstractLock;
import com.indusec.common.lock.DistributedLock;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;

import java.util.concurrent.TimeUnit;

/**
 * <p> redisson分布式锁实现，基本锁功能的抽象实现 </p>
 *
 * <p> 本接口能满足绝大部分的需求，高级的锁功能请自行扩展或直接使用原生API </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/5/5
 */
@ConditionalOnClass(RedissonClient.class)
@ConditionalOnProperty(prefix = "paip.lock", name = "lockerType", havingValue = "REDIS", matchIfMissing = true)
public class RedissonDistributedLock implements DistributedLock {
    @Autowired
    private RedissonClient redisson;

    private AbstractLock getLock(String key, boolean isFair) {
        RLock lock;
        if (isFair) {
            lock = redisson.getFairLock(CommonConstant.LOCK_KEY_PREFIX + ":" + key);
        } else {
            lock =  redisson.getLock(CommonConstant.LOCK_KEY_PREFIX + ":" + key);
        }
        return new AbstractLock(lock, this);
    }

    @Override
    public AbstractLock lock(String key, long leaseTime, TimeUnit unit, boolean isFair) {
        AbstractLock zLock = getLock(key, isFair);
        RLock lock = (RLock) zLock.getLock();
        lock.lock(leaseTime, unit);
        return zLock;
    }

    @Override
    public AbstractLock tryLock(String key, long waitTime, long leaseTime, TimeUnit unit, boolean isFair) throws InterruptedException {
        AbstractLock zLock = getLock(key, isFair);
        RLock lock = (RLock) zLock.getLock();
        if (lock.tryLock(waitTime, leaseTime, unit)) {
            return zLock;
        }
        return null;
    }

    @Override
    public void unlock(Object lock) {
        if (lock != null) {
            if (lock instanceof RLock) {
                RLock rLock = (RLock) lock;
                if (rLock.isLocked()) {
                    rLock.unlock();
                }
            } else {
                throw new LockException("requires RLock type");
            }
        }
    }
}
