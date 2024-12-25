-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
CREATE TABLE oauth_client_details  (
  id bigint(20) NOT NULL COMMENT '主键ID',
  client_id varchar(32) NOT NULL COMMENT '应用标识',
  resource_ids varchar(256) NULL DEFAULT NULL COMMENT '资源限定串(逗号分割)',
  client_secret varchar(256) NULL DEFAULT NULL COMMENT '应用密钥(Bcrypt) 加密',
  client_secret_str varchar(256) NULL DEFAULT NULL COMMENT '应用密钥(明文)',
  scope varchar(256) NULL DEFAULT NULL COMMENT '范围',
  authorized_grant_types varchar(256)  NULL DEFAULT NULL COMMENT '5种oauth授权方式(authorization_code,password,refresh_token,client_credentials)',
  web_server_redirect_uri varchar(256)  NULL DEFAULT NULL COMMENT '回调地址 ',
  authorities varchar(256)  NULL DEFAULT NULL COMMENT '权限',
  access_token_validity int(11) NULL DEFAULT NULL COMMENT 'access_token有效期',
  refresh_token_validity int(11) NULL DEFAULT NULL COMMENT 'refresh_token有效期',
  additional_information varchar(4096) NULL DEFAULT '{}' COMMENT '{}',
  autoapprove char(5) NOT NULL DEFAULT 'true' COMMENT '是否自动授权 是-true',
  create_time datetime(0) NULL DEFAULT NULL,
  update_time datetime(0) NULL DEFAULT NULL,
  client_name varchar(128) DEFAULT '' COMMENT '应用名称',
  support_id_token tinyint(1) DEFAULT 1 COMMENT '是否支持id_token',
  id_token_validity int(11) DEFAULT 60 COMMENT 'id_token有效期',
  PRIMARY KEY (id)
) COMMENT = '认证客户端表';

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO oauth_client_details VALUES (1, 'webApp', NULL, '$2a$10$hc2snVnnO59MRgS0.fZtT.1BJv027yB8hBHwsiyp60EpuNi9Ho3qu', 'webApp', 'app', 'authorization_code,password,refresh_token,  client_credentials,implicit,password_code,openId,mobile_password', NULL, NULL, 3600, NULL, '{}', 'true', now(), now(), 'PC端', 1, 60);
INSERT INTO oauth_client_details VALUES (2, 'app',    NULL, '$2a$10$9iDz3uv8isuaPoJ/IwLKJOVPY1KuOAX4it79D/TBSO5.RhJ2Xhvw2', 'app',    'app', 'authorization_code,password,refresh_token', 'http://127.0.0.1:8081/callback.html', NULL, 3600, NULL, '{}', 'true', now(), now(), '移动端', 1, 60);
INSERT INTO oauth_client_details VALUES (3, 'third',  NULL, '$2a$10$f5hdN5Ep6Jz8oOVsvv7BnezAl6RcXkeNXMSUFAG8W3Hckp2Qmi0LW', 'third',  'all', 'authorization_code,password,refresh_token,  client_credentials', 'http://127.0.0.1:8080/singleLogin', NULL, 3600, 28800, '{}', 'true', now(), now(), '第三方应用', 1, 60);
