package com.indusec.file.service.impl;

import com.indusec.common.constant.CommonConstant;
import com.indusec.file.model.FileInfo;
import com.indusec.oss.model.ObjectInfo;
import com.indusec.oss.properties.FileServerProperties;
import com.indusec.oss.template.S3Template;
import lombok.Getter;
import lombok.Setter;
import cn.hutool.core.util.StrUtil;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.OutputStream;

/**
 * <p> S3 Service </p>
 *
 * <p> Description： 支持各种 「S3」 协议的对象存储如 阿里云OSS、七牛云OSS、MinIO 等 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2021/2/13
 */
@Service
@ConditionalOnProperty(prefix = com.indusec.oss.properties.FileServerProperties.PREFIX, name = "type", havingValue = FileServerProperties.TYPE_S3)
public class S3Service extends AbstractIFileService {
    @Resource
    private S3Template s3Template;

    @Override
    protected String fileType() {
        return FileServerProperties.TYPE_S3;
    }

    @Override
    protected ObjectInfo uploadFile(MultipartFile file) {
        return s3Template.upload(file);
    }

    @Override
    protected void deleteFile(String objectPath) {
        S3Object s3Object = parsePath(objectPath);
        s3Template.delete(s3Object.bucketName, s3Object.objectName);
    }

    @Override
    public void out(String id, OutputStream os) {
        FileInfo fileInfo = baseMapper.selectById(id);
        if (fileInfo != null) {
            S3Object s3Object = parsePath(fileInfo.getPath());
            s3Template.out(s3Object.bucketName, s3Object.objectName, os);
        }
    }

    private S3Object parsePath(String path) {
        S3Object s3Object = new S3Object();
        if (StrUtil.isNotEmpty(path)) {
            int splitIndex = path.lastIndexOf(CommonConstant.PATH_SPLIT);
            if (splitIndex != -1) {
                s3Object.bucketName = path.substring(0, splitIndex);
                s3Object.objectName = path.substring(splitIndex + 1);
            }
        }
        return s3Object;
    }

    @Setter
    @Getter
    private class S3Object {
        private String bucketName;
        private String objectName;
    }
}
