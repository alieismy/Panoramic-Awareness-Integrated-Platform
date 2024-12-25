package com.indusec.oss.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * <p> File Server Properties </p>
 *
 * <p> Description </p>
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021/2/11
 */
@Setter
@Getter
@ConfigurationProperties(prefix = FileServerProperties.PREFIX)
public class FileServerProperties {
    public static final String PREFIX = "paip.file-server";
    public static final String TYPE_FDFS = "fastdfs";
    public static final String TYPE_S3 = "s3";

    /**
     * 为以下2个值，指定不同的自动化配置
     * s3：aws s3协议的存储（阿里云OSS、七牛云OSS、MinIO等）
     * fastdfs：本地部署的fastDFS
     */
    private String type;

    /**
     * aws s3配置
     */
    S3Properties s3 = new S3Properties();

    /**
     * fastDFS配置
     */
    FdfsProperties fdfs = new FdfsProperties();
}
