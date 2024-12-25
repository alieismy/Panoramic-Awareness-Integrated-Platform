package com.indusec.db.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;

/**
 * <p> mybatis-plus 配置 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/4/5
 */
@Setter
@Getter
@ConfigurationProperties(prefix = "paip.mybatis-plus.auto-fill")
@RefreshScope
public class MybatisPlusAutoFillProperties {
    /**
     * 是否开启自动填充字段
     */
    private Boolean enabled = true;
    /**
     * 是否开启了插入填充
     */
    private Boolean enableInsertFill = true;
    /**
     * 是否开启了更新填充
     */
    private Boolean enableUpdateFill = true;
    /**
     * 创建人字段名
     */
    //private String createByField = "createBy";
    /**
     * 创建时间字段名
     */
    private String createTimeField = "createTime";
    /**
     * 更新人字段名
     */
    //private String updateByField = "updateBy";
    /**
     * 更新时间字段名
     */
    private String updateTimeField = "updateTime";
}
