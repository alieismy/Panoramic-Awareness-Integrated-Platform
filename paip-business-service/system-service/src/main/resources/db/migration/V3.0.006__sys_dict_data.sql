-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO sys_dict VALUES ('01', '1', '国家', 'area_type', '区域类型', '1', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('02', '2', '省级', 'area_type', '区域类型', '3', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('03', '3', '地市', 'area_type', '区域类型', '5', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('04', '4', '区县', 'area_type', '区域类型', '7', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('07', '1', '网络设备', 'asset_classification', '资产分类', '9', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('08', '2', '安全设备', 'asset_classification', '资产分类', '9', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('09', '3', '服务器', 'asset_classification', '资产分类', '9', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10', '4', '应用系统', 'asset_classification', '资产分类', '9', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('11', '5', '其它', 'asset_classification', '资产分类', '9', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('21', '1', '引导区电脑病毒', 'virus_type', '病毒类型', '25', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('22', '2', '文件型电脑病毒', 'virus_type', '病毒类型', '27', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('23', '3', '复合型电脑病毒', 'virus_type', '病毒类型', '29', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('24', '4', '宏病毒', 'virus_type', '病毒类型', '31', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('25', '5', '特洛伊木马', 'virus_type', '病毒类型', '33', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('26', '6', '蠕虫病毒', 'virus_type', '病毒类型', '35', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('27', '7', '其他病毒', 'virus_type', '病毒类型', '37', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('31', '1', '很低', 'assets_essentiality', '资产价值', '39', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('32', '2', '低', 'assets_essentiality', '资产价值', '41', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('33', '3', '中', 'assets_essentiality', '资产价值', '43', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('34', '4', '高', 'assets_essentiality', '资产价值', '45', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('35', '5', '很高', 'assets_essentiality', '资产价值', '47', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('41', '1', 'icon:local/topo-firewall.svg;;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '51', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('42', '2', 'icon:local/topo-monitor.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '52', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('43', '3', 'icon:local/topo-ids.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '53', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('44', '4', 'icon:local/topo-vulnerability.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '54', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('45', '5', 'icon:local/topo-server.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '55', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('46', '6', 'icon:local/topo-app.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '55', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('47', '7', 'icon:local/topo-router.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '56', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('48', '8', 'icon:local/topo-switch.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '57', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('49', '9', 'icon:local/topo-viruswall.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '58', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('50', '10', 'icon:local/topo-tower.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '59', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('51', '11', 'icon:local/topo-gateway.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '60', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('52', '12', 'icon:local/topo-trust.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '61', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('53', '13', 'icon:local/topo-ferry.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '61', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('54', '14', 'icon:local/topo-collection.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '61', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('55', '99', 'icon:local/topo-void.svg;icon-width:64;icon-height:64;', 'assets_img', '资产图标', '70', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('56', '1', '规则处置', 'event_status', '事件状态', '70', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('57', '2', '人工处置', 'event_status', '事件状态', '72', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('58', '3', '未处置', 'event_status', '事件状态', '74', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('71', '1', '未处理', 'alarm_status', '告警状态', '94', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('72', '2', '已确认,未响应', 'alarm_status', '告警状态', '96', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('73', '3', '已确认,已响应', 'alarm_status', '告警状态', '100', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('74', '4', '处理完成', 'alarm_status', '告警状态', '100', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('81', '1', '很低', 'alarm_level', '告警级别', '106', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('82', '2', '低', 'alarm_level', '告警级别', '108', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('83', '3', '中等', 'alarm_level', '告警级别', '110', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('84', '4', '高', 'alarm_level', '告警级别', '112', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('85', '5', '很高', 'alarm_level', '告警级别', '114', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('91', '1', '规则生成', 'alarm_generate_type', '告警生成类型', '120', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('92', '2', '人工生成', 'alarm_generate_type', '告警生成类型', '122', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('95', '1', '生成告警', 'event_process_result', '事件处理结果', '126', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('96', '2', '忽略', 'event_process_result', '事件处理结果', '128', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('101', '1', '病毒行为', 'host_monitoring_violation_type', '主机监控违规类型', '130', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('102', '2', '黑客入侵', 'host_monitoring_violation_type', '主机监控违规类型', '132', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('103', '3', '流量异常', 'host_monitoring_violation_type', '主机监控违规类型', '134', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('104', '4', '主机运维异常', 'host_monitoring_violation_type', '主机监控违规类型', '136', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('105', '5', '非法外联', 'host_monitoring_violation_type', '主机监控违规类型', '138', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('106', '6', '非法外联测试', 'host_monitoring_violation_type', '主机监控违规类型', '140', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('107', '7', '非法设备接入', 'host_monitoring_violation_type', '主机监控违规类型', '142', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('108', '8', '服务器状态', 'host_monitoring_violation_type', '主机监控违规类型', '144', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('109', '9', '设备变化', 'host_monitoring_violation_type', '主机监控违规类型', '146', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('110', '10', '设备未登记', 'host_monitoring_violation_type', '主机监控违规类型', '148', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('111', '11', '探头被卸载', 'host_monitoring_violation_type', '主机监控违规类型', '150', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('112', '12', 'IP绑定变化', 'host_monitoring_violation_type', '主机监控违规类型', '152', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('113', '13', '违规操作', 'host_monitoring_violation_type', '主机监控违规类型', '154', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('114', '14', '多系统和虚拟机', 'host_monitoring_violation_type', '主机监控违规类型', '156', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('115', '15', '敏感信息', 'host_monitoring_violation_type', '主机监控违规类型', '158', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('116', '16', '其他报警', 'host_monitoring_violation_type', '主机监控违规类型', '160', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('120', '1', 'HTTP类', 'ids_attack_type', '入侵检测攻击类型', '162', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('121', '2', 'RPC', 'ids_attack_type', '入侵检测攻击类型', '164', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('122', '3', 'WebCGI', 'ids_attack_type', '入侵检测攻击类型', '166', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('123', '4', '拒绝服务类', 'ids_attack_type', '入侵检测攻击类型', '168', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('124', '5', '木马', 'ids_attack_type', '入侵检测攻击类型', '170', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('125', '6', '蠕虫', 'ids_attack_type', '入侵检测攻击类型', '172', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('126', '7', '扫描类', 'ids_attack_type', '入侵检测攻击类型', '174', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('127', '8', '网络访问', 'ids_attack_type', '入侵检测攻击类型', '176', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('128', '9', '系统漏洞', 'ids_attack_type', '入侵检测攻击类型', '178', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('129', '10', '溢出攻击', 'ids_attack_type', '入侵检测攻击类型', '180', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('130', '11', '其他攻击', 'ids_attack_type', '入侵检测攻击类型', '182', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('135', '一般事件', '一般事件', 'event_level', '事件级别', '192', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('136', '较大事件', '较大事件', 'event_level', '事件级别', '194', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('137', '重大事件', '重大事件', 'event_level', '事件级别', '196', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('138', '特别重大事件', '特别重大事件', 'event_level', '事件级别', '198', '0', 'admin', now(), 'admin', now(), null, '9');


INSERT INTO sys_dict VALUES ('141', '1', '访问控制', 'event_type', '事件类型', '200', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('142', '2', '防病毒', 'event_type', '事件类型', '202', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('143', '3', '入侵检测', 'event_type', '事件类型', '204', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('144', '4', '主机监控', 'event_type', '事件类型', '206', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1706', '5', '违规事件', 'event_type', '事件类型', '207', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1707', '6', '漏洞扫描', 'event_type', '事件类型', '208', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1708', '7', '系统操作日志', 'event_type', '事件类型', '209', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1709', '8', '系统运行日志', 'event_type', '事件类型', '210', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1710', '9', '用户行为日志', 'event_type', '事件类型', '211', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100001', '1', '一级', 'monitor_device_log_level', '资产日志级别', '190', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100002', '2', '二级', 'monitor_device_log_level', '资产日志级别', '192', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100003', '3', '三级', 'monitor_device_log_level', '资产日志级别', '194', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100004', '4', '四级', 'monitor_device_log_level', '资产日志级别', '196', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100005', '5', '五级', 'monitor_device_log_level', '资产日志级别', '198', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100006', '5', '操作日志', 'monitor_device_log_type', '资产日志类型', '200', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100007', '6', '运行日志', 'monitor_device_log_type', '资产日志类型', '202', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100008', '7', '用户行为日志', 'monitor_device_log_type', '资产日志类型', '204', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100009', '0', '失败', 'monitor_device_log_result', '资产日志操作结果', '200', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100010', '1', '成功', 'monitor_device_log_result', '资产日志操作结果', '202', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('148', '1', '阻断', 'access_control_action', '访问控制事件行为', '210', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('149', '2', '丢弃', 'access_control_action', '访问控制事件行为', '212', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('150', '3', '允许', 'access_control_action', '访问控制事件行为', '214', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('155', '0', '离线', 'assets_status', '资产状态', '220', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('156', '1', '在线', 'assets_status', '资产状态', '222', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('157', '2', '失效', 'assets_status', '资产状态', '223', '0', 'admin', now(), 'admin', now(), NULL, '9');
INSERT INTO sys_dict VALUES ('158', '3', '过期', 'assets_status', '资产状态', '224', '0', 'admin', now(), 'admin', now(), NULL, '9');

INSERT INTO sys_dict VALUES ('160', '1', '操作日志', 'log_type', '日志类型', '228', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('171', '1', '很低', 'performance_level', '安全域性能等级', '240', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('172', '2', '低', 'performance_level', '安全域性能等级', '242', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('173', '3', '中', 'performance_level', '安全域性能等级', '244', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('174', '4', '高', 'performance_level', '安全域性能等级', '246', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('175', '5', '很高', 'performance_level', '安全域性能等级', '248', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('181', '1', '一级', 'protect_level', '安全域保护等级', '250', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('182', '2', '二级', 'protect_level', '安全域保护等级', '252', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('183', '3', '三级', 'protect_level', '安全域保护等级', '254', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('184', '4', '四级', 'protect_level', '安全域保护等级', '256', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('185', '5', '五级', 'protect_level', '安全域保护等级', '258', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('191', '1', '安全策略知识库', 'knowledge_type', '知识库类型', '260', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('192', '2', '规则知识库', 'knowledge_type', '知识库类型', '262', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('193', '3', '预案知识库', 'knowledge_type', '知识库类型', '264', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('194', '4', '案例知识库', 'knowledge_type', '知识库类型', '266', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('195', '5', '病毒知识库', 'knowledge_type', '知识库类型', '268', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('196', '6', '漏洞知识库', 'knowledge_type', '知识库类型', '270', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('197', '7', '补丁知识库', 'knowledge_type', '知识库类型', '272', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('198', '8', 'IP地址知识库', 'knowledge_type', '知识库类型', '274', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('199', '9', '域名知识库', 'knowledge_type', '知识库类型', '276', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('205', '1', '有害程序', 'alarm_type', '告警类型', '282', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('206', '2', '网络攻击', 'alarm_type', '告警类型', '284', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('207', '3', '信息破坏', 'alarm_type', '告警类型', '286', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('208', '4', '信息内容安全', 'alarm_type', '告警类型', '288', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('209', '5', '设备设施故障', 'alarm_type', '告警类型', '290', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('210', '6', '异常访问', 'alarm_type', '告警类型', '292', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('211', '7', '违规与误操作', 'alarm_type', '告警类型', '294', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('212', '8', '认证授权与非法访问', 'alarm_type', '告警类型', '296', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('213', '9', '性能状态异常', 'alarm_type', '告警类型', '297', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('214', '10', '其它', 'alarm_type', '告警类型', '298', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('215', '1', '处理完成', 'alarm_sweep_type', '告警清除类型', '430', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('216', '2', '不需要处理', 'alarm_sweep_type', '告警清除类型', '432', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('217', '3', '误报', 'alarm_sweep_type', '告警清除类型', '434', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('218', '1', '工单', 'alarm_handle_type', '告警处理类型', '436', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('219', '2', '邮件', 'alarm_handle_type', '告警处理类型', '438', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('221', '1', '很低', 'earlywarning_level', '预警级别', '300', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('222', '2', '低', 'earlywarning_level', '预警级别', '302', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('223', '3', '中等', 'earlywarning_level', '预警级别', '304', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('224', '4', '高', 'earlywarning_level', '预警级别', '306', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('225', '5', '很高', 'earlywarning_level', '预警级别', '308', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('231', '1', '脆弱性预警', 'earlywarning_type', '预警类别', '310', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('232', '2', '威胁预警', 'earlywarning_type', '预警类别', '312', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('233', '3', '风险预警', 'earlywarning_type', '预警类别', '314', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('235', '1', '预备预警', 'earlywarning_status', '预警状态', '320', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('236', '2', '正式预警', 'earlywarning_status', '预警状态', '322', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('237', '3', '归档预警', 'earlywarning_status', '预警状态', '324', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('241', '1', '规则生成', 'earlywarning_generate_pattern', '预警生成类型', '330', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('242', '2', '手动生成', 'earlywarning_generate_pattern', '预警生成类型', '332', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('245', '1', '邮件', 'earlywarning_response_pattern', '预警响应方式', '340', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('246', '2', '工单', 'earlywarning_response_pattern', '预警响应方式', '342', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('247', '3', '闪光', 'earlywarning_response_pattern', '预警响应方式', '344', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('248', '4', '声音', 'earlywarning_response_pattern', '预警响应方式', '346', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('251', '1', '很低', 'securityArea_confidentiality', '安全域机密性', '350', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('252', '2', '低', 'securityArea_confidentiality', '安全域机密性', '352', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('253', '3', '中等', 'securityArea_confidentiality', '安全域机密性', '354', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('254', '4', '高', 'securityArea_confidentiality', '安全域机密性', '356', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('255', '5', '很高', 'securityArea_confidentiality', '安全域机密性', '358', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('261', '1', '很低', 'securityArea_integrality', '安全域完整性', '360', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('262', '2', '低', 'securityArea_integrality', '安全域完整性', '362', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('263', '3', '中等', 'securityArea_integrality', '安全域完整性', '364', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('264', '4', '高', 'securityArea_integrality', '安全域完整性', '366', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('265', '5', '很高', 'securityArea_integrality', '安全域完整性', '368', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('271', '1', '很低', 'securityArea_usability', '安全域可用性', '370', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('272', '2', '低', 'securityArea_usability', '安全域可用性', '372', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('273', '3', '中等', 'securityArea_usability', '安全域可用性', '374', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('274', '4', '高', 'securityArea_usability', '安全域可用性', '376', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('275', '5', '很高', 'securityArea_usability', '安全域可用性', '378', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('281', '1', '很弱', 'virus_level', '病毒危害等级', '380', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('282', '2', '弱', 'virus_level', '病毒危害等级', '382', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('283', '3', '中', 'virus_level', '病毒危害等级', '384', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('284', '4', '强', 'virus_level', '病毒危害等级', '386', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('285', '5', '高', 'virus_level', '病毒危害等级', '388', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('291', '1', '很低', 'weakness_level', '漏洞危害等级', '390', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('292', '2', '低', 'weakness_level', '漏洞危害等级', '392', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('293', '3', '中', 'weakness_level', '漏洞危害等级', '394', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('294', '4', '高', 'weakness_level', '漏洞危害等级', '396', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('295', '5', '很高', 'weakness_level', '漏洞危害等级', '398', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('301', '1', '很低', 'patch_level', '补丁级别', '400', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('302', '2', '低', 'patch_level', '补丁级别', '402', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('303', '3', '中', 'patch_level', '补丁级别', '404', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('304', '4', '高', 'patch_level', '补丁级别', '406', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('305', '5', '很高', 'patch_level', '补丁级别', '408', '0', 'admin', now(), 'admin', now(), null, '9');


INSERT INTO sys_dict VALUES ('311', '1', '很低', 'IP_level', 'IP危害级别', '410', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('312', '2', '低', 'IP_level', 'IP危害级别', '412', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('313', '3', '中', 'IP_level', 'IP危害级别', '414', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('314', '4', '高', 'IP_level', 'IP危害级别', '416', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('315', '5', '很高', 'IP_level', 'IP危害级别', '418', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('321', '1', '很低', 'domainName_level', '域名危害级别', '420', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('322', '2', '低', 'domainName_level', '域名危害级别', '422', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('323', '3', '中', 'domainName_level', '域名危害级别', '424', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('324', '4', '高', 'domainName_level', '域名危害级别', '426', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('325', '5', '很高', 'domainName_level', '域名危害级别', '428', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('366', '&&', '且', 'logic_operator', '逻辑运算符', '501', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('367', '||', '或', 'logic_operator', '逻辑运算符', '503', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('368', 'AND', '且', 'sql_logic_operator', 'SQL逻辑运算符', '501', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('369', 'OR', '或', 'sql_logic_operator', 'SQL逻辑运算符', '503', '0', 'admin', now(), 'admin', now(), null, '9');


INSERT INTO sys_dict VALUES ('335', '1', '中央级', 'cascade_type', '级联类型', '450', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('336', '2', '省级', 'cascade_type', '级联类型', '451', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('337', '3', '市级', 'cascade_type', '级联类型', '452', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('1001', '0', '失效', 'earlywarning_rule_efficient_status', '预警规则生效状态', '200', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1002', '1', '生效', 'earlywarning_rule_efficient_status', '预警规则生效状态', '201', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1003', '0', '漏洞规则预警规则', 'earlywarning_rule_type', '预警规则类型', '202', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1004', '1', '风险指标预警规则', 'earlywarning_rule_type', '预警规则类型', '203', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1005', '1', '漏洞数据', 'earlywarning_rule_adapt_data_type', '预警规则适应的数量类型', '204', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1006', '2', '安全事件数据', 'earlywarning_rule_adapt_data_type', '预警规则适应的数量类型', '205', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1007', '3', '资产数据', 'earlywarning_rule_adapt_data_type', '预警规则适应的数量类型', '206', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1008', '4', '性能数据', 'earlywarning_rule_adapt_data_type', '预警规则适应的数量类型', '207', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1009', '1', '风险指标算法', 'earlywarning_rule_algorithm', '预警规则算法', '208', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1010', '2', '单漏洞指标算法', 'earlywarning_rule_algorithm', '预警规则算法', '209', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1011', '3', '单漏洞资产加权指标算法', 'earlywarning_rule_algorithm', '预警规则算法', '210', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1012', '4', '单资产漏洞加权指标算法', 'earlywarning_rule_algorithm', '预警规则算法', '210', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1013', '(', '大于', 'scope_left_operator', '集合左边界符号', '211', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1014', '[', '大于等于', 'scope_left_operator', '集合左边界符号', '212', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1015', ')', '小于', 'scope_right_operator', '集合右边界符号', '213', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1016', ']', '小于等于', 'scope_right_operator', '集合右边界符号', '214', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1017', '=', '等于', 'binary_operator', '二元操作符', '1012', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1018', '≠', '不等于', 'binary_operator', '二元操作符', '1013', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1019', '∈', '属于', 'binary_operator', '二元操作符', '1015', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1020', '∉', '不属于', 'binary_operator', '二元操作符', '1014', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1021', '⊂', '包含于', 'binary_operator', '二元操作符', '1016', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1022', '>', '大于', 'binary_operator', '二元操作符', '1012', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1023', '≥', '大于等于', 'binary_operator', '二元操作符', '1013', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1024', '<', '小于', 'binary_operator', '二元操作符', '1015', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1025', '≤', '小于等于', 'binary_operator', '二元操作符', '1014', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('1114', '1', '卫士通', 'asset_manufacturer', '资产厂商', '1106', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1115', '2', '天融信', 'asset_manufacturer', '资产厂商', '1107', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1116', '3', '迪普', 'asset_manufacturer', '资产厂商', '1108', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1117', '4', '绿盟', 'asset_manufacturer', '资产厂商', '1109', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1118', '5', '网御星云', 'asset_manufacturer', '资产厂商', '1110', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1119', '6', '中孚', 'asset_manufacturer', '资产厂商', '1111', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1120', '7', '360', 'asset_manufacturer', '资产厂商', '1112', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1121', '8', '北信源', 'asset_manufacturer', '资产厂商', '1113', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1122', '9', '启明', 'asset_manufacturer', '资产厂商', '1114', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1123', '10', '网神', 'asset_manufacturer', '资产厂商', '1115', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1124', '11', '瑞星', 'asset_manufacturer', '资产厂商', '1116', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1125', '12', '华胜天成', 'asset_manufacturer', '资产厂商', '1117', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1126', '13', '画方科技', 'asset_manufacturer', '资产厂商', '1118', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1127', '14', '30所', 'asset_manufacturer', '资产厂商', '1119', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1128', '15', '北京电子科技学院', 'asset_manufacturer', '资产厂商', '1120', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1129', '16', '中铁信安', 'asset_manufacturer', '资产厂商', '1121', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1130', '17', '汉邦京泰', 'asset_manufacturer', '资产厂商', '1122', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1131', '18', '中超伟业', 'asset_manufacturer', '资产厂商', '1123', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1132', '19', '北京安天', 'asset_manufacturer', '资产厂商', '1124', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1133', '20', '中国网安', 'asset_manufacturer', '资产厂商', '1125', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1134', '21', '合众', 'asset_manufacturer', '资产厂商', '1126', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1135', '22', '金山', 'asset_manufacturer', '资产厂商', '1128', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1136', '23', 'H3C', 'asset_manufacturer', '资产厂商', '1130', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1137', '24', '戴尔', 'asset_manufacturer', '资产厂商', '1132', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1138', '25', 'IBM', 'asset_manufacturer', '资产厂商', '1134', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1139', '26', '惠普', 'asset_manufacturer', '资产厂商', '1136', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1140', '27', '联想', 'asset_manufacturer', '资产厂商', '1138', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1141', '28', 'Centos', 'asset_manufacturer', '资产厂商', '1140', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1142', '29', 'Windows', 'asset_manufacturer', '资产厂商', '1142', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1143', '30', '华为', 'asset_manufacturer', '资产厂商', '1144', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1144', '31', '亚信', 'asset_manufacturer', '资产厂商', '1146', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1145', '32', '安恒', 'asset_manufacturer', '资产厂商', '1148', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1146', '33', '深信服', 'asset_manufacturer', '资产厂商', '1150', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1147', '34', '数据所', 'asset_manufacturer', '资产厂商', '1152', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1148', '35', '科来', 'asset_manufacturer', '资产厂商', '1154', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1149', '36', '通用', 'asset_manufacturer', '资产厂商', '1155', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('401', '0', '用户手动输入', 'parameter_input_type', '参数输入方式', '1131', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('402', '1', '下拉框选取(单选)', 'parameter_input_type', '参数输入方式', '1132', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('403', '2', '复选框选取(多选)', 'parameter_input_type', '参数输入方式', '1133', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('404', '0', '丢包', 'packageFilter_action', '包过滤策略动作', '1134', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('405', '1', '通过', 'packageFilter_action', '包过滤策略动作', '1135', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('406', '0', '不发日志', 'packageFilter_log', '包过滤策略是否发日志', '1136', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('407', '1', '发日志', 'packageFilter_log', '包过滤策略是否发日志', '1137', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('408', '11', 'Windows', 'targetSub', 'IPS/IDS设备IT资源', '1138', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('409', '12', 'Unix/Linux', 'targetSub', 'IPS/IDS设备IT资源', '1139', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('410', '13', 'Novel', 'targetSub', 'IPS/IDS设备IT资源', '1138', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('411', '14', 'Sun Solaris', 'targetSub', 'IPS/IDS设备IT资源', '1139', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('412', '15', 'MAC OS', 'targetSub', 'IPS/IDS设备IT资源', '1140', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('413', '16', 'AIX', 'targetSub', 'IPS/IDS设备IT资源', '1141', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('414', '17', '其它操作系统', 'targetSub', 'IPS/IDS设备IT资源', '1142', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('415', '21', 'Microsoft Office', 'targetSub', 'IPS/IDS设备IT资源', '1143', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('416', '22', 'WPS', 'targetSub', 'IPS/IDS设备IT资源', '1144', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('417', '23', 'Adobe Acrobat', 'targetSub', 'IPS/IDS设备IT资源', '1145', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('418', '24', '其它办公软件', 'targetSub', 'IPS/IDS设备IT资源', '1146', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('419', '31', '聊天类软件', 'targetSub', 'IPS/IDS设备IT资源', '1147', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('420', '32', '下载类软件', 'targetSub', 'IPS/IDS设备IT资源', '1148', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('421', '33', '游戏', 'targetSub', 'IPS/IDS设备IT资源', '1149', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('422', '34', '媒体播放器', 'targetSub', 'IPS/IDS设备IT资源', '1150', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('423', '35', '安全、杀毒软件', 'targetSub', 'IPS/IDS设备IT资源', '1151', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('424', '36', '备份软件', 'targetSub', 'IPS/IDS设备IT资源', '1152', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('425', '37', '邮件客户端', 'targetSub', 'IPS/IDS设备IT资源', '1153', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('426', '41', 'Mysql', 'targetSub', 'IPS/IDS设备IT资源', '1154', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('427', '42', 'MS-SQL', 'targetSub', 'IPS/IDS设备IT资源', '1155', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('428', '43', 'Oracel', 'targetSub', 'IPS/IDS设备IT资源', '1156', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('429', '44', 'Sybase', 'targetSub', 'IPS/IDS设备IT资源', '1157', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('430', '45', 'DB2', 'targetSub', 'IPS/IDS设备IT资源', '1158', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('431', '46', 'Access', 'targetSub', 'IPS/IDS设备IT资源', '1159', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('432', '47', 'PostgreSQL', 'targetSub', 'IPS/IDS设备IT资源', '1160', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('433', '48', '其他数据库', 'targetSub', 'IPS/IDS设备IT资源', '1161', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('544', '51', 'Apache', 'targetSub', 'IPS/IDS设备IT资源', '1162', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('434', '52', 'Microsoft IIS', 'targetSub', 'IPS/IDS设备IT资源', '1163', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('435', '53', 'WebLogic', 'targetSub', 'IPS/IDS设备IT资源', '1164', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('436', '54', 'Tomcat', 'targetSub', 'IPS/IDS设备IT资源', '1165', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('437', '55', 'Resin', 'targetSub', 'IPS/IDS设备IT资源', '1166', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('438', '56', 'CGI', 'targetSub', 'IPS/IDS设备IT资源', '1167', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('439', '57', 'WEB', 'targetSub', 'IPS/IDS设备IT资源', '1168', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('440', '61', 'IE', 'targetSub', 'IPS/IDS设备IT资源', '1168', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('441', '62', 'FireFox', 'targetSub', 'IPS/IDS设备IT资源', '1169', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('442', '63', 'Netscape', 'targetSub', 'IPS/IDS设备IT资源', '1170', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('443', '64', 'Maxthon', 'targetSub', 'IPS/IDS设备IT资源', '1171', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('444', '65', 'Tencent Traveler', 'targetSub', 'IPS/IDS设备IT资源', '1172', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('445', '66', '其他浏览器', 'targetSub', 'IPS/IDS设备IT资源', '1173', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('446', '71', '微软Exchange', 'targetSub', 'IPS/IDS设备IT资源', '1174', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('447', '72', 'Postfix', 'targetSub', 'IPS/IDS设备IT资源', '1175', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('448', '73', 'SendMail', 'targetSub', 'IPS/IDS设备IT资源', '1176', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('449', '74', 'Qmail', 'targetSub', 'IPS/IDS设备IT资源', '1177', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('450', '75', 'Mdaemon', 'targetSub', 'IPS/IDS设备IT资源', '1178', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('451', '76', '其他邮件服务器', 'targetSub', 'IPS/IDS设备IT资源', '1179', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('452', '81', '恶意爬虫类', 'targetSub', 'IPS/IDS设备IT资源', '1180', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('453', '82', '商业爬虫类', 'targetSub', 'IPS/IDS设备IT资源', '1181', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('454', '83', '开源爬虫类', 'targetSub', 'IPS/IDS设备IT资源', '1182', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('455', '84', '其他爬虫类', 'targetSub', 'IPS/IDS设备IT资源', '1183', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('456', '91', '其他', 'targetSub', 'IPS/IDS设备IT资源', '1184', '0', 'admin', now(), 'admin', now(), null, '0');


INSERT INTO sys_dict VALUES ('457', '11', '溢出攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1185', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('458', '12', '其他', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1186', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('459', '21', '蠕虫攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1187', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('460', '22', '木马攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1188', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('461', '23', '病毒攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1189', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('462', '24', '钓鱼攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1190', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('463', '25', '恶意代码', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1191', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('464', '31', '扫描探测', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1192', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('465', '41', '协议异常', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1193', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('466', '51', '可疑访问', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1194', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('467', '52', '事件监控', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1195', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('468', '61', '泛洪攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1196', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('469', '701', 'SQL注入', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1197', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('470', '702', '命令注入', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1198', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('471', '703', 'Cookie注入', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1199', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('472', '704', '跨脚本攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1200', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('473', '705', '跨站请求伪造', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1201', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('474', '706', '网页挂马', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1202', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('475', '707', '网络爬虫', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1203', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('476', '708', '信息泄露', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1204', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('477', '709', '错误配置', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1205', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('478', '710', '隐藏字段', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1206', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('479', '711', '会呼劫持', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1207', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('480', '712', '网页篡改', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1208', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('481', '713', '文件包含', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1209', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('482', '714', '目录穿越', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1210', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('483', '715', 'CGI攻击', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1211', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('484', '716', '其他', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1212', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('485', '81', 'Vulnerability', 'targetSubAttack', 'IPS/IDS设备攻击类型', '1213', '0', 'admin', now(), 'admin', now(), null, '0');


INSERT INTO sys_dict VALUES ('486', '1', 'IP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1214', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('487', '2', 'IGMP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1215', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('488', '3', 'GGP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1216', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('489', '4', 'ICMP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1217', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('490', '5', 'TCP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1218', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('491', '6', 'UDP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1219', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('492', '7', 'SSH', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1220', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('493', '8', 'TELNET（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1221', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('494', '9', 'FINGER（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1222', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('495', '10', 'RPC（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1223', '0', 'admin', now(), 'admin', now(), null, '0');
-- INSERT INTO sys_dict VALUES ('496', '11', 'NETBIOS-SSN', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1224', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('497', '12', 'IMAP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1225', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('498', '13', 'LOGIN', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1226', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('499', '14', 'NCUBE-LM', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1227', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('500', '15', 'PPTP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1228', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('501', '16', 'POP3', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1229', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('502', '17', 'SQL Server', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1230', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('503', '18', 'HTTP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1231', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('504', '19', 'DNS（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1232', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('505', '20', 'FTP Ctrl', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1233', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('506', '21', 'SMTP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1234', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('507', '22', 'FTP Data', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1235', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('508', '23', 'KERBEROS（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1236', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('509', '24', 'SUNRP（tcp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1237', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('510', '25', 'IMAP3', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1238', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('511', '26', 'SHELL', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1239', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('512', '27', 'PRINTER', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1240', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('513', '28', 'FTPS', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1241', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('514', '29', 'MYSQL', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1242', '0', 'admin', now(), 'admin', now(), null, '0');
-- INSERT INTO sys_dict VALUES ('515', '30', 'HTTPS', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1243', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('516', '31', 'MMS', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1244', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('517', '32', 'RTSP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1245', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('518', '33', 'NNTP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1246', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('519', '34', 'PRC（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1247', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('520', '35', 'NETBIOS-NS', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1248', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('521', '36', 'SNMP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1249', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('522', '37', 'ISAKMP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1250', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('523', '38', 'TFTP Ctrl', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1251', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('524', '39', 'TFTP Data', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1252', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('525', '40', 'DNS（s）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1253', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('526', '41', 'TELNET（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1254', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('527', '42', 'DHCPS（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1255', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('528', '43', 'DHCPC（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1256', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('529', '44', 'KERBEROS（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1257', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('530', '45', 'SUNRPC（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1258', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('531', '46', 'NTP（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1259', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('532', '47', 'RADIUS（udp）', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1260', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('533', '48', 'RIP', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1261', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('534', '49', 'NFS', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1262', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('535', '50', 'MOUNT', 'targetSubProtocol', 'IPS/IDS设备协议相关', '1263', '0', 'admin', now(), 'admin', now(), null, '0');


INSERT INTO sys_dict VALUES ('536', '0', '无', 'featureAction', 'IPS/IDS设备特征动作', '1264', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('537', '1', '告警', 'featureAction', 'IPS/IDS设备特征动作', '1265', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('538', '2', '阻断', 'featureAction', 'IPS/IDS设备特征动作', '1266', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('539', '3', '阻断+源TCP Reset', 'featureAction', 'IPS/IDS设备特征动作', '1267', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('540', '4', '阻断+目的TCP Reset', 'featureAction', 'IPS/IDS设备特征动作', '1268', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('541', '5', '阻断+双向TCP Reset', 'featureAction', 'IPS/IDS设备特征动作', '1269', '0', 'admin', now(), 'admin', now(), null, '0');


INSERT INTO sys_dict VALUES ('542', '0', '禁用', 'enable', 'IPS/IDS设备策略禁用启用标识', '1270', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('543', '1', '启用', 'enable', 'IPS/IDS设备策略禁用启用标识', '1271', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('550', '1', '邮件', 'alarm_response_type', '告警响应方式', '1280', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('551', '2', '工单', 'alarm_response_type', '告警响应方式', '1282', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('552', '3', '闪光', 'alarm_response_type', '告警响应方式', '1284', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('553', '4', '声音', 'alarm_response_type', '告警响应方式', '1286', '0', 'admin', now(), 'admin', now(), null, '9');


INSERT INTO sys_dict VALUES ('554', '1', 'ICMP', 'protocolNum', '迪普防火墙协议号', '1287', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('555', '2', 'IGMP', 'protocolNum', '迪普防火墙协议号', '1288', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('556', '3', 'GGP', 'protocolNum', '迪普防火墙协议号', '1289', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('557', '4', 'IP', 'protocolNum', '迪普防火墙协议号', '1290', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('558', '5', 'ST', 'protocolNum', '迪普防火墙协议号', '1291', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('559', '6', 'TCP', 'protocolNum', '迪普防火墙协议号', '1292', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('560', '7', 'CBT', 'protocolNum', '迪普防火墙协议号', '1293', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('561', '8', 'EGP', 'protocolNum', '迪普防火墙协议号', '1294', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('562', '9', 'IGP', 'protocolNum', '迪普防火墙协议号', '1295', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('563', '10', 'BBN-RCC-MON', 'protocolNum', '迪普防火墙协议号', '1296', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('564', '11', 'NVP-II', 'protocolNum', '迪普防火墙协议号', '1297', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('565', '12', 'PUP', 'protocolNum', '迪普防火墙协议号', '1298', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('566', '13', 'ARGUS', 'protocolNum', '迪普防火墙协议号', '1299', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('567', '14', 'EMCON', 'protocolNum', '迪普防火墙协议号', '1300', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('568', '15', 'XNET', 'protocolNum', '迪普防火墙协议号', '1301', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('569', '16', 'CHAOS', 'protocolNum', '迪普防火墙协议号', '1302', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('570', '17', 'UDP', 'protocolNum', '迪普防火墙协议号', '1303', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('571', '18', 'MUX', 'protocolNum', '迪普防火墙协议号', '1304', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('572', '19', 'DCN-MEAS', 'protocolNum', '迪普防火墙协议号', '1305', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('573', '20', 'HMP', 'protocolNum', '迪普防火墙协议号', '1306', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('574', '21', 'PRM', 'protocolNum', '迪普防火墙协议号', '1307', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('575', '22', 'XNS-IDP', 'protocolNum', '迪普防火墙协议号', '1308', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('576', '23', 'TRUNK-1', 'protocolNum', '迪普防火墙协议号', '1309', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('577', '24', 'TRUNK-2', 'protocolNum', '迪普防火墙协议号', '1310', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('578', '25', 'LEAF-1', 'protocolNum', '迪普防火墙协议号', '1311', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('579', '26', 'LEAF-2', 'protocolNum', '迪普防火墙协议号', '1312', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('580', '27', 'RDP', 'protocolNum', '迪普防火墙协议号', '1313', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('581', '28', 'IRTP', 'protocolNum', '迪普防火墙协议号', '1314', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('582', '29', 'ISO-TP4', 'protocolNum', '迪普防火墙协议号', '1315', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('583', '30', 'NETBLT', 'protocolNum', '迪普防火墙协议号', '1316', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('584', '31', 'MFE-NSP', 'protocolNum', '迪普防火墙协议号', '1317', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('585', '32', 'MERIT-INP', 'protocolNum', '迪普防火墙协议号', '1318', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('586', '33', 'SEP', 'protocolNum', '迪普防火墙协议号', '1319', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('587', '34', '3PC', 'protocolNum', '迪普防火墙协议号', '1320', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('588', '35', 'IDPR', 'protocolNum', '迪普防火墙协议号', '1321', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('589', '36', 'XTP', 'protocolNum', '迪普防火墙协议号', '1322', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('590', '37', 'DDP', 'protocolNum', '迪普防火墙协议号', '1323', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('591', '38', 'IDPR-CMTP', 'protocolNum', '迪普防火墙协议号', '1324', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('592', '39', 'TP++', 'protocolNum', '迪普防火墙协议号', '1325', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('593', '40', 'IL ', 'protocolNum', '迪普防火墙协议号', '1326', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('594', '41', 'IPv6', 'protocolNum', '迪普防火墙协议号', '1327', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('595', '42', 'SDRP', 'protocolNum', '迪普防火墙协议号', '1328', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('596', '43', 'IPv6-Route', 'protocolNum', '迪普防火墙协议号', '1329', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('597', '44', 'IPv6-Frag', 'protocolNum', '迪普防火墙协议号', '1330', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('598', '45', 'IDRP', 'protocolNum', '迪普防火墙协议号', '1331', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('599', '46', 'RSVP', 'protocolNum', '迪普防火墙协议号', '1332', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('600', '47', 'GRE', 'protocolNum', '迪普防火墙协议号', '1333', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('601', '48', 'MHRP', 'protocolNum', '迪普防火墙协议号', '1334', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('602', '49', 'BNA', 'protocolNum', '迪普防火墙协议号', '1335', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('603', '50', 'ESP', 'protocolNum', '迪普防火墙协议号', '1336', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('604', '51', 'AH', 'protocolNum', '迪普防火墙协议号', '1337', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('605', '52', 'I-NLSP ', 'protocolNum', '迪普防火墙协议号', '1338', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('606', '53', 'SWIPE', 'protocolNum', '迪普防火墙协议号', '1339', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('607', '54', 'NARP', 'protocolNum', '迪普防火墙协议号', '1340', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('608', '55', 'MOBILE', 'protocolNum', '迪普防火墙协议号', '1341', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('609', '56', 'TLSP', 'protocolNum', '迪普防火墙协议号', '1342', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('610', '57', 'SKIP', 'protocolNum', '迪普防火墙协议号', '1343', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('611', '58', 'IPv6-ICMP', 'protocolNum', '迪普防火墙协议号', '1344', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('612', '59', 'IPv6-NoNxt', 'protocolNum', '迪普防火墙协议号', '1345', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('613', '60', 'IPv6-Opts', 'protocolNum', '迪普防火墙协议号', '1346', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('614', '61', '任意主机内部协议', 'protocolNum', '迪普防火墙协议号', '1347', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('615', '62', 'CFTP', 'protocolNum', '迪普防火墙协议号', '1348', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('616', '63', '任意本地网络', 'protocolNum', '迪普防火墙协议号', '1349', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('617', '64', 'SAT-EXPAK', 'protocolNum', '迪普防火墙协议号', '1350', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('618', '65', 'KRYPTOLAN', 'protocolNum', '迪普防火墙协议号', '1351', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('619', '66', 'RVD', 'protocolNum', '迪普防火墙协议号', '1352', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('620', '67', 'IPPC', 'protocolNum', '迪普防火墙协议号', '1353', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('621', '68', '任意分布式文件系统', 'protocolNum', '迪普防火墙协议号', '1354', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('622', '69', 'SAT-MON', 'protocolNum', '迪普防火墙协议号', '1355', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('623', '70', 'VISA', 'protocolNum', '迪普防火墙协议号', '1356', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('624', '71', 'IPCV', 'protocolNum', '迪普防火墙协议号', '1357', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('625', '72', 'CPNX', 'protocolNum', '迪普防火墙协议号', '1358', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('626', '73', 'CPHB', 'protocolNum', '迪普防火墙协议号', '1359', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('627', '74', 'WSN', 'protocolNum', '迪普防火墙协议号', '1360', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('628', '75', 'PVP', 'protocolNum', '迪普防火墙协议号', '1361', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('629', '76', 'BR-SAT-MON', 'protocolNum', '迪普防火墙协议号', '1362', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('630', '77', 'SUN-ND', 'protocolNum', '迪普防火墙协议号', '1363', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('631', '78', 'WB-MON', 'protocolNum', '迪普防火墙协议号', '1364', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('632', '79', 'WB-EXPAK', 'protocolNum', '迪普防火墙协议号', '1365', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('633', '80', 'ISO-IP', 'protocolNum', '迪普防火墙协议号', '1366', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('634', '81', ' VMTP', 'protocolNum', '迪普防火墙协议号', '1367', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('635', '82', 'SECURE-VMTP', 'protocolNum', '迪普防火墙协议号', '1368', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('636', '83', 'VINES', 'protocolNum', '迪普防火墙协议号', '1369', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('637', '84', 'TTP', 'protocolNum', '迪普防火墙协议号', '1370', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('638', '85', 'NSFNET-IGP', 'protocolNum', '迪普防火墙协议号', '1371', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('639', '86', 'DGP', 'protocolNum', '迪普防火墙协议号', '1372', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('640', '87', 'TCF', 'protocolNum', '迪普防火墙协议号', '1373', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('641', '88', 'EIGRP', 'protocolNum', '迪普防火墙协议号', '1374', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('642', '89', 'OSPFIGP', 'protocolNum', '迪普防火墙协议号', '1375', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('643', '90', 'Sprite-RPC', 'protocolNum', '迪普防火墙协议号', '1376', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('644', '91', 'LARP', 'protocolNum', '迪普防火墙协议号', '1377', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('645', '92', 'MTP', 'protocolNum', '迪普防火墙协议号', '1378', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('646', '93', 'AX.25', 'protocolNum', '迪普防火墙协议号', '1379', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('647', '94', 'IPIP', 'protocolNum', '迪普防火墙协议号', '1380', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('648', '95', 'MICP', 'protocolNum', '迪普防火墙协议号', '1381', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('649', '96', 'SCC-SP', 'protocolNum', '迪普防火墙协议号', '1382', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('650', '97', 'ETHERIP', 'protocolNum', '迪普防火墙协议号', '1383', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('651', '98', 'ENCAP', 'protocolNum', '迪普防火墙协议号', '1384', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('652', '99', '任意专用加密方案', 'protocolNum', '迪普防火墙协议号', '1385', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('653', '100', 'GMTP', 'protocolNum', '迪普防火墙协议号', '1386', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('654', '101', 'IFMP', 'protocolNum', '迪普防火墙协议号', '1387', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('655', '102', 'PNNI', 'protocolNum', '迪普防火墙协议号', '1388', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('656', '103', 'PIM', 'protocolNum', '迪普防火墙协议号', '1389', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('657', '104', 'ARIS', 'protocolNum', '迪普防火墙协议号', '1390', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('658', '105', 'SCPS', 'protocolNum', '迪普防火墙协议号', '1391', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('659', '106', 'QNX', 'protocolNum', '迪普防火墙协议号', '1392', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('660', '107', 'A/N', 'protocolNum', '迪普防火墙协议号', '1393', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('661', '108', 'IPComp', 'protocolNum', '迪普防火墙协议号', '1394', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('662', '109', 'SNP', 'protocolNum', '迪普防火墙协议号', '1395', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('663', '110', 'Compaq-Peer', 'protocolNum', '迪普防火墙协议号', '1396', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('664', '111', 'IPX-in-IP', 'protocolNum', '迪普防火墙协议号', '1397', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('665', '112', 'VRRP', 'protocolNum', '迪普防火墙协议号', '1398', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('666', '113', 'PGM', 'protocolNum', '迪普防火墙协议号', '1399', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('667', '114', '任意0跳协议', 'protocolNum', '迪普防火墙协议号', '1400', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('668', '115', 'L2TP', 'protocolNum', '迪普防火墙协议号', '1401', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('669', '116', 'DDX', 'protocolNum', '迪普防火墙协议号', '1402', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('670', '117', 'IATP', 'protocolNum', '迪普防火墙协议号', '1403', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('671', '118', 'STP', 'protocolNum', '迪普防火墙协议号', '1404', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('672', '119', 'SRP', 'protocolNum', '迪普防火墙协议号', '1405', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('673', '120', 'UTI', 'protocolNum', '迪普防火墙协议号', '1406', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('674', '121', 'SMP', 'protocolNum', '迪普防火墙协议号', '1407', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('675', '122', 'SM', 'protocolNum', '迪普防火墙协议号', '1408', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('676', '123', 'PTP', 'protocolNum', '迪普防火墙协议号', '1409', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('677', '124', 'ISIS', 'protocolNum', '迪普防火墙协议号', '1410', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('678', '125', 'FIRE', 'protocolNum', '迪普防火墙协议号', '1411', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('679', '126', 'CRTP', 'protocolNum', '迪普防火墙协议号', '1412', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('680', '127', 'CRUDP', 'protocolNum', '迪普防火墙协议号', '1413', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('681', '128', 'SSCOPMCE', 'protocolNum', '迪普防火墙协议号', '1414', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('682', '129', 'IPLT', 'protocolNum', '迪普防火墙协议号', '1415', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('683', '130', 'SPS', 'protocolNum', '迪普防火墙协议号', '1416', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('684', '131', 'PIPE', 'protocolNum', '迪普防火墙协议号', '1417', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('685', '132', 'SCTP', 'protocolNum', '迪普防火墙协议号', '1418', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('686', '133', 'FC', 'protocolNum', '迪普防火墙协议号', '1419', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('687', '0', 'HOPOPT', 'protocolNum', '迪普防火墙协议号', '1420', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('688', '1', '安全域', 'domain_type', '安全域', '1421', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('689', '2', '业务域(网系)', 'domain_type', '业务域(网系)', '1422', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('690', '3', '云(云cloud域)', 'domain_type', '云(云cloud域)', '1423', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('1500', '1', '安全事件数据源', 'datasource', '规则事件数据源', '1500', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1505', '6', '性能数据源', 'datasource', '规则事件数据源', '1505', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1506', '7', '漏洞数据源', 'datasource', '规则事件数据源', '1506', '0', 'admin',now(),'admin',now(),null,'9');


INSERT INTO sys_dict VALUES ('1508', '>', '大于', 'operator', '操作符', '1508', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1509', '>=', '大于等于', 'operator', '操作符', '1509', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1510', '<', '小于', 'operator', '操作符', '1510', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1511', '<=', '小于等于', 'operator', '操作符', '1511', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1512', '=', '等于', 'operator', '操作符', '1512', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1513', '!=', '不等于', 'operator', '操作符', '1513', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1514', 'contain', '包含', 'operator', '操作符', '1514', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1515', 'not contain', '不包含', 'operator', '操作符', '1515', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1516', 'in', '属于', 'operator', '操作符', '1516', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1517', 'not in', '不属于', 'operator', '操作符', '1517', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1518', 'and', '且', 'operator', '操作符', '1518', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1519', 'or', '或', 'operator', '操作符', '1519', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1520', '1', '普通模板', 'rule_template_type', '规则模板类型', '1520', '0', 'admin',now(),'admin',now(),null,'9');
-- INSERT INTO sys_dict VALUES ('1521', '2', '关联分析模板', 'rule_template_type', '规则模板类型', '1521', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1522', '1', '计数', 'aggregate_type', '汇总类型', '1522', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1523', '2', '累加值', 'aggregate_type', '汇总类型', '1523', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1524', '3', '平均值', 'aggregate_type', '汇总类型', '1524', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1525', '4', '最小值', 'aggregate_type', '汇总类型', '1525', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1526', '5', '最大值', 'aggregate_type', '汇总类型', '1526', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1527', '1', 'A事件后发生B事件', 'rule_pattern_type', '规则关联类型', '1527', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1528', '2', 'A事件重复发生', 'rule_pattern_type', '规则关联类型', '1528', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1529', '3', 'A事件重复发生直到B事件发生', 'rule_pattern_type', '规则关联类型', '1529', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1530', '1', '平移窗口', 'time_window_type', '时间窗口类型', '1530', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1531', '2', '滑动窗口', 'time_window_type', '时间窗口类型', '1531', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1532', '1', '秒', 'time_window_unit', '时间窗口单位', '1532', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1533', '2', '分钟', 'time_window_unit', '时间窗口单位', '1533', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1534', '3', '小时', 'time_window_unit', '时间窗口单位', '1534', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1535', 'nrgl', '内容过滤', 'access_control_sub_type', '访问控制子类型', '1535', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1536', 'fwkz', '访问控制', 'access_control_sub_type', '访问控制子类型', '1536', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1537', 'ljrz', '连接日志', 'access_control_sub_type', '访问控制子类型', '1537', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1538', 'fwkzcl', '访问控制策略', 'access_control_sub_type', '访问控制子类型', '1538', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1539', 'ymkz', '域名控制', 'access_control_sub_type', '访问控制子类型', '1539', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1540', '6', '区分计数', 'aggregate_type', '汇总类型', '1540', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1541', '0', '原始模板', 'rule_template_type', '规则模板类型', '1541', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1546', '0', 'Context', 'rule_component_type', '规则组件类型', '1546', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1547', '1', 'Named Window', 'rule_component_type', '规则组件类型', '1547', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1548', '2', 'Table', 'rule_component_type', '规则组件类型', '1548', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1549', '3', 'Variable', 'rule_component_type', '规则组件类型', '1549', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1550', '4', 'Expression', 'rule_component_type', '规则组件类型', '1550', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1551', '5', 'Schema', 'rule_component_type', '规则组件类型', '1551', '0', 'admin',now(),'admin',now(),null,'9');


INSERT INTO sys_dict VALUES ('1601', '1', '病毒行为', 'event_illegal_type', '违规事件子类型', '1601', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1602', '2', '黑客入侵', 'event_illegal_type', '违规事件子类型', '1602', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1603', '3', '流量异常', 'event_illegal_type', '违规事件子类型', '1603', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1604', '4', '主机运维异常', 'event_illegal_type', '违规事件子类型', '1604', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1605', '5', '非法外联', 'event_illegal_type', '违规事件子类型', '1605', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1606', '6', '非法外联测试', 'event_illegal_type', '违规事件子类型', '1606', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1607', '7', '非法设备接入', 'event_illegal_type', '违规事件子类型', '1607', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1608', '8', '服务器状态', 'event_illegal_type', '违规事件子类型', '1608', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1609', '9', '设备变化', 'event_illegal_type', '违规事件子类型', '1609', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1610', '10', '设备未登记', 'event_illegal_type', '违规事件子类型', '1610', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1611', '11', '探头被卸载', 'event_illegal_type', '违规事件子类型', '1611', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1612', '12', 'IP绑定变化', 'event_illegal_type', '违规事件子类型', '1612', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1613', '13', '违规操作', 'event_illegal_type', '违规事件子类型', '1613', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1614', '14', '多系统和虚拟机', 'event_illegal_type', '违规事件子类型', '1614', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1615', '15', '敏感信息', 'event_illegal_type', '违规事件子类型', '1615', '0', 'admin',now(),'admin',now(),null,'9');
-- INSERT INTO sys_dict VALUES ('1616', '16', '黑客入侵', 'event_illegal_type', '违规事件子类型', '1616', '0', 'admin',now(),'admin',now(),null,'9');

INSERT INTO sys_dict VALUES ('691', '9', 'NETWORK', 'completeness_type', '防护完备性类型', '691', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('692', '5', 'HOST', 'completeness_type', '防护完备性类型', '692', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('693', '3', 'APP', 'completeness_type', '防护完备性类型', '693', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('694', '1', 'DATA', 'completeness_type', '防护完备性类型', '694', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('701', '-1', '未管理', 'device_status', '设备状态', '701', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('702', '0', '未知', 'device_status', '设备状态', '702', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('703', '1', '正常', 'device_status', '设备状态', '703', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('704', '2', '警告', 'device_status', '设备状态', '704', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('705', '3', '次要', 'device_status', '设备状态', '705', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('706', '4', '重要', 'device_status', '设备状态', '706', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('707', '5', '严重', 'device_status', '设备状态', '707', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('708', '0', '路由器', 'device_category', '设备类型', '708', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('709', '1', '交换机', 'device_category', '设备类型', '709', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('710', '1', '紧急', 'device_alarm_level', '设备告警级别', '710', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('713', '4', '警告', 'device_alarm_level', '设备告警级别', '713', '0', 'admin', now(), 'admin', now(), null, '0');
INSERT INTO sys_dict VALUES ('714', '5', '通知', 'device_alarm_level', '设备告警级别', '714', '0', 'admin', now(), 'admin', now(), null, '0');

INSERT INTO sys_dict VALUES ('1651', '1', '侦查', 'alarm_stage', '告警阶段', '1651', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1652', '2', '投放', 'alarm_stage', '告警阶段', '1652', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1653', '3', '利用', 'alarm_stage', '告警阶段', '1653', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1654', '4', '控制', 'alarm_stage', '告警阶段', '1654', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1655', '5', '攻击', 'alarm_stage', '告警阶段', '1654', '0', 'admin',now(),'admin',now(),null,'9');
INSERT INTO sys_dict VALUES ('1656', '6', '隐藏', 'alarm_stage', '告警阶段', '1656', '0', 'admin',now(),'admin',now(),null,'9');

INSERT INTO sys_dict VALUES ('751', '1', '拒绝', 'ids_attack_action', '入侵检测攻击行为', '751', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('752', '2', '记录', 'ids_attack_action', '入侵检测攻击行为', '752', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('1701', '1', '一般', 'work_flow_level', '工单紧急等级', '1701', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1702', '2', '紧急', 'work_flow_level', '工单紧急等级', '1702', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1703', '3', '非常紧急', 'work_flow_level', '工单紧急等级', '1703', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('1704', '1', '受理中', 'work_flow_status', '工单状态', '1704', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('1705', '2', '已完结', 'work_flow_status', '工单状态', '1705', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100011', '1', '恶意代码', 'threat_category', '威胁一级类别代码', '1706', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100012', '2', '网络攻击', 'threat_category', '威胁一级类别代码', '1707', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100013', '3', '信息监控', 'threat_category', '威胁一级类别代码', '1708', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100015', '5', '软硬件故障', 'threat_category', '威胁一级类别代码', '1709', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100019', '9', '其它', 'threat_category', '威胁一级类别代码', '1710', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');

INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100021', '1', '病毒', 'threat_classification', '威胁二级类别代码', '1711', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100022', '2', '蠕虫', 'threat_classification', '威胁二级类别代码', '1712', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100023', '3', '木马', 'threat_classification', '威胁二级类别代码', '1713', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100024', '4', '黑客攻击程序', 'threat_classification', '威胁二级类别代码', '1714', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100025', '5', '混合攻击程序', 'threat_classification', '威胁二级类别代码', '1715', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100026', '6', '拒绝服务攻击', 'threat_classification', '威胁二级类别代码', '1716', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100027', '7', '漏洞攻击', 'threat_classification', '威胁二级类别代码', '1717', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100028', '8', '网络扫描', 'threat_classification', '威胁二级类别代码', '1718', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100029', '9', 'Web应用攻击', 'threat_classification', '威胁二级类别代码', '1719', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100030', '10', '溢出攻击', 'threat_classification', '威胁二级类别代码', '1720', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100031', '11', '网络异常行为', 'threat_classification', '威胁二级类别代码', '1721', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100032', '12', '违规', 'threat_classification', '威胁二级类别代码', '1722', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100033', '13', '设备运行异常', 'threat_classification', '威胁二级类别代码', '1723', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100034', '14', '人为事故', 'threat_classification', '威胁二级类别代码', '1724', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100035', '15', '软硬件自身故障', 'threat_classification', '威胁二级类别代码', '1725', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100036', '16', '其它', 'threat_classification', '威胁二级类别代码', '1726', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');

INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100041', '1', '低危', 'threat_level', '威胁级别代码', '1731', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100042', '2', '中危', 'threat_level', '威胁级别代码', '1732', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100043', '3', '高危', 'threat_level', '威胁级别代码', '1733', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');
INSERT INTO `wsp`.`sys_dict` (`id`, `value`, `label`, `type`, `description`, `sort`, `parent_id`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`, `del_flag`)
VALUES ('100044', '4', '超危', 'threat_level', '威胁级别代码', '1734', '0', 'admin', '2018-07-20 10:04:47', 'admin', '2018-07-20 10:04:47', NULL, '9');

INSERT INTO sys_dict VALUES ('10100', '0', 'emerg', 'syslog_level', '日志等级', '192', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10101', '1', 'alert', 'syslog_level', '日志等级', '192', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10102', '2', 'crit', 'syslog_level', '日志等级', '194', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10103', '3', 'err', 'syslog_level', '日志等级', '196', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10104', '4', 'warning', 'syslog_level', '日志等级', '198', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10105', '5', 'notice', 'syslog_level', '日志等级', '198', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10106', '6', 'info', 'syslog_level', '日志等级', '198', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('10107', '7', 'debug', 'syslog_level', '日志等级', '198', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100101', '1', '中央', 'topology_page_type', '拓扑页面类型', '100101', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100102', '2', '部委', 'topology_page_type', '拓扑页面类型', '100102', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100103', '3', '地方', 'topology_page_type', '拓扑页面类型', '100103', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100104', '4', '网络信任_顶层', 'topology_page_type', '拓扑页面类型', '100104', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100105', '5', '网络信任_党委管理', 'topology_page_type', '拓扑页面类型', '100105', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100201', '0', '单次', 'cascade_report_period', '级联上报周期', '100201', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100202', '5', '5分钟', 'cascade_report_period', '级联上报周期', '100202', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100203', '15', '15分钟', 'cascade_report_period', '级联上报周期', '100203', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100204', '30', '30分钟', 'cascade_report_period', '级联上报周期', '100204', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100301', '1', '综合态势', 'cascade_report_type', '级联上报类型', '100301', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100302', '2', '系统运行状态', 'cascade_report_type', '级联上报类型', '100302', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100303', '3', '资产', 'cascade_report_type', '级联上报类型', '100303', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100304', '4', '资产运行状态', 'cascade_report_type', '级联上报类型', '100304', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100305', '5', '告警', 'cascade_report_type', '级联上报类型', '100305', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100306', '6', '预警', 'cascade_report_type', '级联上报类型', '100306', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100307', '7', '攻击', 'cascade_report_type', '级联上报类型', '100307', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100308', '8', '漏洞', 'cascade_report_type', '级联上报类型', '100308', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100309', '9', '病毒', 'cascade_report_type', '级联上报类型', '100309', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100310', '10', '威胁情报', 'cascade_report_type', '级联上报类型', '100310', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100311', '11', '知识库', 'cascade_report_type', '级联上报类型', '100311', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100312', '12', '违规数据', 'cascade_report_type', '级联上报类型', '100312', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100313', '13', '工单数据', 'cascade_report_type', '级联上报类型', '100313', '0', 'admin', now(), 'admin', now(), null, '9');

INSERT INTO sys_dict VALUES ('100401', '1', '未处理', 'cascade_alarm_status', '级联告警状态', '100401', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100402', '2', '处理中', 'cascade_alarm_status', '级联告警状态', '100402', '0', 'admin', now(), 'admin', now(), null, '9');
INSERT INTO sys_dict VALUES ('100403', '3', '处理完成', 'cascade_alarm_status', '级联告警状态', '100403', '0', 'admin', now(), 'admin', now(), null, '9');
