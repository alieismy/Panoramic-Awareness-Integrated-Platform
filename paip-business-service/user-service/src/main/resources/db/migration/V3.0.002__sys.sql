/* Create Tables */

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
CREATE TABLE sys_user  (
  id bigint NOT NULL COMMENT '主键ID',
  username varchar(50)  NOT NULL,
  password varchar(100) NOT NULL,
  nickname varchar(255) NULL DEFAULT NULL,
  head_img_url varchar(1024) NULL DEFAULT NULL,
  mobile varchar(11) NULL DEFAULT NULL,
  sex tinyint NULL DEFAULT NULL,
  enabled tinyint NOT NULL DEFAULT 1,
  type varchar(16) NOT NULL,
  create_time datetime NULL DEFAULT NULL,
  update_time datetime NULL DEFAULT NULL,
  company varchar(255) NULL,
  open_id varchar(32) NULL,
  is_del tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  KEY idx_username (username),
  KEY idx_mobile (mobile),
  KEY idx_open_id (open_id)
) COMMENT = '用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$TJkwVdlpbHKnV45.nBxbgeFHmQRmyWlshg94lFu2rKxVtT2OMniDO', '管理员', 'http://pkqtmn0p1.bkt.clouddn.com/头像1.png', '18888888888', 0, 1, 'APP', now(), now(), '公司1', '123', 0);
INSERT INTO `sys_user` VALUES (2, 'user', '$2a$10$OhfZv4VQJiqMEukpf1qXA.V7UMiHjr86g6lJqPvKUoHwrPk35steG', '体验用户', 'http://payo7kq4i.bkt.clouddn.com/头像2.jpg', '18888888887', 1, 1, 'APP', now(), now(), '公司2', NULL, 0);
INSERT INTO `sys_user` VALUES (3, 'test', '$2a$10$RD18sHNphJMmcuLuUX/Np.IV/7Ngbjd3Jtj3maFLpwaA6KaHVqPtq', '测试账户', 'http://payo7kq4i.bkt.clouddn.com/头像3.jpg', '13851539156', 0, 0, 'APP', now(), now(), '公司3', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
CREATE TABLE sys_role  (
  id bigint NOT NULL COMMENT '主键ID',
  code varchar(32) NOT NULL COMMENT '角色code',
  name varchar(50) NOT NULL COMMENT '角色名',
  create_time datetime NULL DEFAULT NULL,
  update_time datetime NULL DEFAULT NULL,
  tenant_id varchar(32) DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (id),
  KEY idx_code (code),
  KEY idx_tenant_id (tenant_id)
) COMMENT = '角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ADMIN', '管理员角色', now(), now(), 'webApp');
INSERT INTO `sys_role` VALUES (2, 'TEST', '测试角色', now(), now(), 'webApp');
INSERT INTO `sys_role` VALUES (3, 'OPS', '运维角色', now(), now(), 'webApp');



-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
CREATE TABLE sys_role_user  (
  user_id bigint NOT NULL,
  role_id bigint NOT NULL,
  PRIMARY KEY (user_id, role_id)
) COMMENT = '角色用户关联表';

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 1);
INSERT INTO `sys_role_user` VALUES (2, 1);
INSERT INTO `sys_role_user` VALUES (3, 1);
INSERT INTO `sys_role_user` VALUES (4, 1);
INSERT INTO `sys_role_user` VALUES (5, 1);
INSERT INTO `sys_role_user` VALUES (6, 1);
INSERT INTO `sys_role_user` VALUES (7, 2);
INSERT INTO `sys_role_user` VALUES (8, 2);
INSERT INTO `sys_role_user` VALUES (9, 3);
INSERT INTO `sys_role_user` VALUES (10, 3);
INSERT INTO `sys_role_user` VALUES (11, 4);
INSERT INTO `sys_role_user` VALUES (12, 5);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
CREATE TABLE sys_menu  (
  id bigint NOT NULL COMMENT '主键ID',
  parent_id bigint NOT NULL,
  name varchar(64) NOT NULL,
  url varchar(1024) NULL DEFAULT NULL,
  path varchar(1024) NULL DEFAULT NULL,
  path_method varchar(10) NULL DEFAULT NULL,
  css varchar(32) NULL DEFAULT NULL,
  sort int NOT NULL,
  create_time datetime NULL,
  update_time datetime NULL,
  type tinyint NOT NULL COMMENT 'URL类型：1菜单，2资源（按钮）',
  hidden tinyint NOT NULL DEFAULT 0,
  tenant_id varchar(32) DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (id),
  KEY idx_parent_id (parent_id),
  KEY idx_tenant_id (tenant_id)
) COMMENT = '系统菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, 12, '用户管理', '#!user', 'system/user.html', NULL, 'layui-icon-friends', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (3, 12, '角色管理', '#!role', 'system/role.html', NULL, 'layui-icon-user', 3, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (4, 12, '菜单管理', '#!menus', 'system/menus.html', NULL, 'layui-icon-menu-fill', 4, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (9, 37, '文件中心', '#!files', 'files/files.html', NULL, 'layui-icon-file', 3, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (10, 37, '文档中心', '#!swagger', 'https://127.0.0.1:9900/doc.html', NULL, 'layui-icon-app', 4, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (11, 12, '我的信息', '#!myInfo', 'system/myInfo.html', NULL, 'layui-icon-login-qq', 10, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (12, -1, '认证管理', 'javascript:;', '', NULL, 'layui-icon-set', 1, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (35, 12, '应用管理', '#!app', 'attestation/app.html', NULL, 'layui-icon-link', 5, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (37, -1, '系统管理', 'javascript:;', '', NULL, 'layui-icon-set', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (62, 63, '应用监控', '#!admin', 'http://127.0.0.1:6500/#/wallboard', NULL, 'layui-icon-chart-screen', 4, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (63, -1, '系统监控', 'javascript:;', '', NULL, 'layui-icon-set', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (64, 63, '系统日志', '#!sysLog', 'log/sysLog.html', NULL, 'layui-icon-file-b', 1, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (65, 37, '代码生成器', '#!generator', 'generator/list.html', NULL, 'layui-icon-template', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (66, 63, '慢查询SQL', '#!slowQueryLog', 'log/slowQueryLog.html', NULL, 'layui-icon-snowflake', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (67, -1, '任务管理', '#!job', 'http://127.0.0.1:8081/', NULL, 'layui-icon-date', 3, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (68, 63, '应用吞吐量监控', '#!sentinel', 'http://127.0.0.1:6999', NULL, 'layui-icon-chart', 5, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (69, 37, '配置中心', '#!nacos', 'http://127.0.0.1:8848/nacos', NULL, 'layui-icon-tabs', 1, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (70, 63, 'APM监控', '#!apm', 'http://127.0.0.1:8080', null, 'layui-icon-engine', 6, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (71, -1, '搜索管理', 'javascript:;', '', NULL, 'layui-icon-set', 3, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (72, 71, '索引管理', '#!index', 'search/index_manager.html', NULL, 'layui-icon-template', 1, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (73, 71, '用户搜索', '#!userSearch', 'search/user_search.html', NULL, 'layui-icon-user', 2, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (74, 12, 'Token管理', '#!tokens', 'system/tokens.html', NULL, 'layui-icon-unlink', 6, now(), now(), 1, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (75, 2, '用户列表', '/api-user/users', 'user-list', 'GET', null, 1, now(), now(), 2, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (76, 2, '查询用户角色', '/api-user/roles', 'user-roles', 'GET', null, 2, now(), now(), 2, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (77, 2, '用户添加', '/api-user/users/saveOrUpdate', 'user-btn-add', 'POST', null, 3, now(), now(), 2, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (78, 2, '用户导出', '/api-user/users/export', 'user-btn-export', 'POST', null, 4, now(), now(), 2, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (79, 2, '用户导入', '/api-user/users/import', 'user-btn-import', 'POST', null, 5, now(), now(), 2, 0, 'webApp');
INSERT INTO `sys_menu` VALUES (85, 63, '审计日志', '#!auditLog', 'log/auditLog.html', NULL, 'layui-icon-file-b', 3, now(), now(), 1, 0, 'webApp');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
CREATE TABLE sys_role_menu  (
  role_id bigint NOT NULL,
  menu_id bigint NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`)
) COMMENT = '角色菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 35);
INSERT INTO `sys_role_menu` VALUES (1, 37);
INSERT INTO `sys_role_menu` VALUES (1, 62);
INSERT INTO `sys_role_menu` VALUES (1, 63);
INSERT INTO `sys_role_menu` VALUES (1, 64);
INSERT INTO `sys_role_menu` VALUES (1, 65);
INSERT INTO `sys_role_menu` VALUES (1, 66);
INSERT INTO `sys_role_menu` VALUES (1, 67);
INSERT INTO `sys_role_menu` VALUES (1, 68);
INSERT INTO `sys_role_menu` VALUES (1, 69);
INSERT INTO `sys_role_menu` VALUES (1, 70);
INSERT INTO `sys_role_menu` VALUES (1, 71);
INSERT INTO `sys_role_menu` VALUES (1, 72);
INSERT INTO `sys_role_menu` VALUES (1, 73);
INSERT INTO `sys_role_menu` VALUES (1, 74);
INSERT INTO `sys_role_menu` VALUES (1, 75);
INSERT INTO `sys_role_menu` VALUES (1, 76);
INSERT INTO `sys_role_menu` VALUES (1, 77);
INSERT INTO `sys_role_menu` VALUES (1, 78);
INSERT INTO `sys_role_menu` VALUES (1, 79);
INSERT INTO `sys_role_menu` VALUES (1, 85);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (2, 12);
INSERT INTO `sys_role_menu` VALUES (2, 35);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 3);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 12);

-- ----------------------------
-- Table structure for sys_logger
-- ----------------------------
CREATE TABLE sys_logger  (
  id bigint NOT NULL COMMENT '主键ID',
  application_name varchar(32) NULL COMMENT '应用名',
  class_name varchar(128) NOT NULL COMMENT '类名',
  method_name varchar(64) NOT NULL COMMENT '方法名',
  user_id bigint NULL COMMENT '用户id',
  user_name varchar(50) NULL COMMENT '用户名',
  client_id varchar(32) NULL COMMENT '租户id',
  operation varchar(1024) NOT NULL COMMENT '操作信息',
  timestamp varchar(30) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id)
) COMMENT = '审计日志表';
