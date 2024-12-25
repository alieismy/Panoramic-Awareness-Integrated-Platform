package com.indusec.oss.properties;

import lombok.Getter;
import lombok.Setter;

/**
 * <p> aws s3协议配置 </p>
 *
 * <p> Description：支持各种 「S3」 协议的对象存储如 阿里云OSS、七牛云OSS、MinIO 等 </p>
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021/2/11
 */
@Setter
@Getter
public class S3Properties {
    /**
     * 用户名
     */
    private String accessKey;
    /**
     * 密码
     */
    private String accessKeySecret;
    /**
     * 访问端点
     */
    private String endpoint;
    /**
     * bucket名称
     */
    private String bucketName;
    /**
     * 区域
     */
    private String region;
    /**
     * path-style
     */
    private Boolean pathStyleAccessEnabled = true;
}
