package com.indusec.oss.config;

import com.indusec.oss.properties.FileServerProperties;
import com.indusec.oss.template.FdfsTemplate;
import com.indusec.oss.template.S3Template;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Import;

/**
 * <p> OSS Auto Configure类 </p>
 *
 * <p> Description </p>
 *
 * @author: Jiang Lie
 * @email: JiangLie@indusec.com.cn
 * @version: 3.0.0
 * @since: 2021/2/13
 */
@EnableConfigurationProperties(FileServerProperties.class)
@Import({FdfsTemplate.class, S3Template.class})
public class OssAutoConfigure {

}
