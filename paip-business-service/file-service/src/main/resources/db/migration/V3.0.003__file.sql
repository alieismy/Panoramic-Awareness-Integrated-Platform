-- ----------------------------
-- Table structure for file_info
-- ----------------------------
CREATE TABLE file_info (
  id varchar(32)  NOT NULL COMMENT '文件md5',
  name varchar(128) NOT NULL,
  is_img tinyint NOT NULL,
  content_type varchar(128) NOT NULL,
  size int NOT NULL,
  path varchar(255) NULL DEFAULT NULL COMMENT '物理路径',
  url varchar(1024) NOT NULL,
  source varchar(32) NOT NULL,
  create_time datetime NULL DEFAULT NULL,
  update_time datetime NULL DEFAULT NULL,
  tenant_id varchar(32) DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (id),
  KEY idx_create_time (create_time),
  KEY idx_tenant_id (tenant_id)
) COMMENT = '文件存储表';

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('2c95b54f4d8356cf8ab40802f496df83', '头像.png', 1, 'image/png', 1290, 'http://pkqtmn0p1.bkt.clouddn.com/头像.png', 'http://pkqtmn0p1.bkt.clouddn.com/头像.png', 'QINIU', now(), now(), 'webApp');
