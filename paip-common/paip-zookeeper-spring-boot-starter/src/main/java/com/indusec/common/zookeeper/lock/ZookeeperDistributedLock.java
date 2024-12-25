package com.indusec.common.zookeeper.lock;

import com.indusec.common.constant.CommonConstant;
import com.indusec.common.exception.LockException;
import com.indusec.common.lock.AbstractLock;
import com.indusec.common.lock.DistributedLock;
import org.apache.curator.framework.CuratorFramework;
import org.apache.curator.framework.recipes.locks.InterProcessMutex;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * <p> Zookeeper分布式锁实现 </p>
 *
 * <p> Description </p>
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021/4/3
 */
@Component
@ConditionalOnProperty(prefix = "paip.lock", name = "lockerType", havingValue = "ZK")
public class ZookeeperDistributedLock implements DistributedLock {
    @Resource
    private CuratorFramework client;

    private AbstractLock getLock(String key) {
        InterProcessMutex lock = new InterProcessMutex(client, getPath(key));
        return new AbstractLock(lock, this);
    }

    @Override
    public AbstractLock lock(String key, long leaseTime, TimeUnit unit, boolean isFair) throws Exception {
        AbstractLock zLock = this.getLock(key);
        InterProcessMutex ipm = (InterProcessMutex) zLock.getLock();
        ipm.acquire();
        return zLock;
    }

    @Override
    public AbstractLock tryLock(String key, long waitTime, long leaseTime, TimeUnit unit, boolean isFair) throws Exception {
        AbstractLock zLock = this.getLock(key);
        InterProcessMutex ipm = (InterProcessMutex) zLock.getLock();
        if (ipm.acquire(waitTime, unit)) {
            return zLock;
        }
        return null;
    }

    @Override
    public void unlock(Object lock) throws Exception {
        if (lock != null) {
            if (lock instanceof InterProcessMutex) {
                InterProcessMutex ipm = (InterProcessMutex) lock;
                if (ipm.isAcquiredInThisProcess()) {
                    ipm.release();
                }
            } else {
                throw new LockException("requires InterProcessMutex type");
            }
        }
    }

    private String getPath(String key) {
        return CommonConstant.PATH_SPLIT + CommonConstant.LOCK_KEY_PREFIX + CommonConstant.PATH_SPLIT + key;
    }
}
