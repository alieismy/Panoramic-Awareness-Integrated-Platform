package com.indusec.oss.properties;

import lombok.Getter;
import lombok.Setter;

/**
 * <p> fastdfs配置 </p>
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
public class FdfsProperties {
    /**
     * fastdfs的http访问地址
     */
    private String webUrl;
}
