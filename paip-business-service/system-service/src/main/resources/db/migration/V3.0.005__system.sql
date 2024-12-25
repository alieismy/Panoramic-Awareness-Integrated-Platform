-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
CREATE TABLE sys_area
(
    id varchar(64) NOT NULL COMMENT '编号',
    parent_id varchar(64) NOT NULL COMMENT '父级编号',
    parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
    name varchar(100) NOT NULL COMMENT '名称',
    code varchar(100) COMMENT '区域编码',
    type char(1) COMMENT '区域类型',
    sort decimal(10,0) COMMENT '排序（升序）',
    useable char(1) DEFAULT '1' NOT NULL COMMENT '是否可用,1：可用 0：不可用',
    longitude decimal(8,4) DEFAULT NULL COMMENT '经度',
    latitude decimal(8,4) DEFAULT NULL COMMENT '纬度',
    PRIMARY KEY (id)
) COMMENT = '区域表';

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
CREATE TABLE sys_dict
(
    id varchar(64) NOT NULL COMMENT '编号',
    value varchar(100) NOT NULL COMMENT '数据值',
    label varchar(100) NOT NULL COMMENT '标签名',
    type varchar(100) NOT NULL COMMENT '类型',
    description varchar(100) NOT NULL COMMENT '类型描述',
    sort decimal(10,0) COMMENT '排序（升序）',
    parent_id varchar(64) DEFAULT '0' COMMENT '父级编号',
    create_by varchar(64) NOT NULL COMMENT '创建者',
    create_date datetime NOT NULL COMMENT '创建时间',
    update_by varchar(64) NOT NULL COMMENT '更新者',
    update_date datetime NOT NULL COMMENT '更新时间',
    remarks varchar(255) COMMENT '备注信息',
    del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
    PRIMARY KEY (id)
) COMMENT = '字典表';

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
CREATE TABLE sys_office
(
    id varchar(64) NOT NULL COMMENT '编号',
    parent_id varchar(64) NOT NULL COMMENT '父级编号',
    parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
    name varchar(100) NOT NULL COMMENT '名称',
    sort decimal(10,0)  COMMENT '排序',
    code varchar(100) COMMENT '机构编码',
    type char(1) NOT NULL COMMENT '机构类型',
    address varchar(255) COMMENT '联系地址',
    zip_code varchar(100) COMMENT '邮政编码',
    create_by varchar(64) NOT NULL COMMENT '创建者',
    create_date datetime NOT NULL COMMENT '创建时间',
    update_by varchar(64) NOT NULL COMMENT '更新者',
    update_date datetime NOT NULL COMMENT '更新时间',
    remarks varchar(255) COMMENT '备注信息',
    del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
    PRIMARY KEY (id)
) COMMENT = '组织机构表';

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
CREATE TABLE sys_role_office
(
    role_id varchar(64) NOT NULL COMMENT '角色编号',
    office_id varchar(64) NOT NULL COMMENT '机构编号',
    PRIMARY KEY (role_id, office_id)
) COMMENT = '角色-机构';


/* Create Indexes */
CREATE INDEX sys_area_parent_id ON sys_area (parent_id ASC);
CREATE INDEX sys_dict_value ON sys_dict (value ASC);
CREATE INDEX sys_dict_label ON sys_dict (label ASC);
CREATE INDEX sys_office_parent_id ON sys_office (parent_id ASC);
CREATE INDEX sys_office_type ON sys_office (type ASC);