/*
 * Copyright 2013-2020 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.indusec.common.utils.net;

import lombok.extern.slf4j.Slf4j;
import org.lionsoul.ip2region.DataBlock;
import org.lionsoul.ip2region.DbConfig;
import org.lionsoul.ip2region.DbMakerConfigException;
import org.lionsoul.ip2region.DbSearcher;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * <p> ip 转 ip归属地工具类 </p>
 *
 * 核心对象是DbSearcher
 * * 原理是有一个ip2region.db的sqlite数据库文件中保存了ip相关的归属地信息
 * * 通过传入的ip到数据库中查询以得到归属地
 * * <p>
 * * 创建DbSearcher对象实际上是将db读取到byte[]中来解析的
 * * DbSearcher的close是关闭对db文件的输入流
 * * <p>
 * * 该工具类通过getDbBinStr方法直接读取db到byte[]中,通过DbSearcher的含byte[]的构造器创建该对象,所以不需要关心DbSearcher的close
 * * <p>
 * * 提供reloadDb方法刷新DbSearcher的ip库
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021-09-18 11:34
 */
@Slf4j
public class Ip2regionUtil {
    /**
     * 系统默认的ip库文件名
     */
    private static final String DB_NAME = "ip2region.db";
    /**
     * ip地址搜索器
     */
    private static DbSearcher ipSearcher;
    /**
     * ip库配置
     */
    private static DbConfig dbConfig;

    static {
        try {
            dbConfig = new DbConfig();
            initSearcher(getDbBinStr());
        } catch (DbMakerConfigException e) {
            log.error("ip2region config init fail", e);
        }
    }

    private Ip2regionUtil() {
    }

    /**
     * ip转ip地址归属地
     *
     * @param ip ip地址
     * @return ip地址归属地
     */
    public static String ip2Address(String ip) {
        if (ipSearcher == null) {
            return null;
        }
        try {
            DataBlock dataBlock = ipSearcher.memorySearch(ip);
            if (dataBlock != null) {
                return dataBlock.getRegion();
            }
        } catch (IOException e) {
            log.error("ip to addr exception", e);
        }
        return null;
    }

    /**
     * 重新加载指定的ip库文件
     * 如果后期ip库发生了更新，可以使用该方法更新ip库
     *
     * @param dbFile ip库文件
     */
    public static void reloadDb(File dbFile) {
        initSearcher(getDbBinStr(dbFile));
    }

    /**
     * 重新加载系统默认的ip库
     */
    public static void reloadDb() {
        initSearcher(getDbBinStr());
    }

    // ----------- 私有方法 -----------

    /**
     * 初始化一个ip地址搜索器
     *
     * @param dbBinStr ip库字节
     */
    private static void initSearcher(byte[] dbBinStr) {
        if (dbBinStr != null) {
            if (ipSearcher != null) {
                // 释放引用，让gc回收
                ipSearcher = null;
            }
            ipSearcher = new DbSearcher(dbConfig, dbBinStr);
        }
    }

    /**
     * 获取默认ip库的字节内容
     *
     * @return db字节内容
     */
    private static byte[] getDbBinStr() {
        ClassPathResource classPathResource = new ClassPathResource(DB_NAME);
        try {
            File file = classPathResource.getFile();
            return getDbBinStr(file);
        } catch (IOException e) {
            log.error("ip2region.db load fail", e);
        }
        return null;
    }

    /**
     * 获取指定ip库的字节内容
     *
     * @param dbFile ip库文件
     * @return db字节内容
     */
    private static byte[] getDbBinStr(File dbFile) {
        try {
            RandomAccessFile raf = new RandomAccessFile(dbFile, "r");
            byte[] dbBinStr = new byte[(int) raf.length()];
            raf.seek(0L);
            raf.readFully(dbBinStr, 0, dbBinStr.length);
            raf.close();
            return dbBinStr;
        } catch (IOException e) {
            log.error("ip2region.db load fail", e);
        }
        return null;
    }

}