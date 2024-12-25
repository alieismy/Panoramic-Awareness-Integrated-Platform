package com.indusec.log.service.impl;

import com.indusec.common.utils.id.IdGenerator;
import com.indusec.log.model.Audit;
import com.indusec.log.properties.LogDbProperties;
import com.indusec.log.service.IAuditService;
import com.zaxxer.hikari.HikariDataSource;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;

/**
 * <p> 审计日志实现类-数据库 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2020/2/8 13:06
 */
@Slf4j
@Service
@ConditionalOnProperty(name = "paip.audit-log.log-type", havingValue = "db")
@ConditionalOnClass(JdbcTemplate.class)
public class DbAuditServiceImpl implements IAuditService {
    /**
     * 如果sys_logger表id为自增，则删除insert中id
     */
    private static final String INSERT_SQL = " insert into sys_logger " +
        " (id, application_name, class_name, method_name, user_id, user_name, client_id, operation, timestamp) " +
        " values (?,?,?,?,?,?,?,?,?)";

    private final JdbcTemplate jdbcTemplate;

    public DbAuditServiceImpl(@Autowired(required = false) LogDbProperties logDbProperties, DataSource dataSource) {
        //优先使用配置的日志数据源，否则使用默认的数据源
        if (logDbProperties != null && StringUtils.isNotEmpty(logDbProperties.getJdbcUrl())) {
            dataSource = new HikariDataSource(logDbProperties);
        }
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    /**
     * TODO: 在V3.0.002__sys.sql中定义TABLE sys_logger，不要在代码中定义表模型，无法用flyway管理
     */
    //@PostConstruct
    //public void init() {
    //    String sql = "CREATE TABLE IF NOT EXISTS sys_logger  (\n" +
    //        "  id bigint(20) NOT NULL COMMENT '主键ID',\n" +
    //        "  application_name varchar(32)  NULL COMMENT '应用名',\n" +
    //        "  class_name varchar(128)  NOT NULL COMMENT '类名',\n" +
    //        "  method_name varchar(64)  NOT NULL COMMENT '方法名',\n" +
    //        "  user_id int(11) NULL COMMENT '用户id',\n" +
    //        "  user_name varchar(50)  NULL COMMENT '用户名',\n" +
    //        "  client_id varchar(32)  NULL COMMENT '租户id',\n" +
    //        "  operation varchar(1024)  NOT NULL COMMENT '操作信息',\n" +
    //        "  timestamp varchar(30)  NOT NULL COMMENT '创建时间',\n" +
    //        "  PRIMARY KEY (id) USING BTREE\n" +
    //        ") COMMENT = '审计日志表';";
    //    this.jdbcTemplate.execute(sql);
    //}
    @Async
    @Override
    public void save(Audit audit) {
        this.jdbcTemplate.update(INSERT_SQL
            // 主键id为分布式ID，类型bigint(20)
            , IdGenerator.getId()
            , audit.getApplicationName(), audit.getClassName(), audit.getMethodName()
            , audit.getUserId(), audit.getUserName(), audit.getClientId()
            , audit.getOperation(), audit.getTimestamp());
    }
}
