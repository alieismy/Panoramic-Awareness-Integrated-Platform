package com.indusec.oss.service;

import com.indusec.oss.model.ObjectInfo;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.io.OutputStream;

/**
 * <p> OSS Service接口 </p>
 *
 * <p> Description </p>
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021/2/9
 */
public interface IOssService {
    /**
     * 上传对象
     *
     * @param objectName 对象名
     * @param is         对象流
     */
    ObjectInfo upload(String objectName, InputStream is);

    /**
     * 上传对象
     *
     * @param file 对象
     */
    ObjectInfo upload(MultipartFile file);

    /**
     * 删除对象
     *
     * @param objectKey 对象标识
     */
    void delete(String objectKey);

    /**
     * 查看文件
     *
     * @param objectPath 对象路径
     * @param os 输出流
     */
    void view(String objectPath, OutputStream os);
}
