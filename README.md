# 全景感知一体化平台架构

# Panoramic Awareness Integrated Platform

```
参照全景感知智能分析系统 - 技术选型构建前后端分离的企业级微服务架构，基于Spring Cloud第三代技术架构，统一使用Spring Cloud Gateway网关，集成Spring Security实现基于RBAC、JWT和OAuth2的无状态统一权限认证，平台服务支持注册发现和统一配置，支持容器化、链路追踪（APM）、容错限流，支持分布式任务调度、License管理，引入组件化的思想实现高内聚低耦合并且高度可配置化，主要针对解决微服务和业务开发时常见的非功能性需求。
```

## 1. 模块说明

```
panoramic-awareness-integrated-platform -- 父项目，公共依赖
│  ├─paip-uaa-server -- Spring Security认证中心[8000]
│  ├─paip-business-service -- 业务模块一级工程
│  │  ├─user-service -- 用户服务[7000]
│  │  ├─file-service -- 文件服务[5000]
│  │  ├─code-generator -- 代码生成器[7300]
│  │  ├─search-service -- 搜索服务
│  │  │  ├─search-client -- 搜索服务客户端
│  │  │  ├─search-server -- 搜索服务服务端[7100]
│  │─paip-common -- 通用工具一级工程
│  │  ├─paip-auth-client-spring-boot-starter -- 封装Spring Security Client端的通用操作逻辑
│  │  ├─paip-common-core -- 封装通用操作逻辑
│  │  ├─paip-common-spring-boot-starter -- 封装通用操作逻辑
│  │  ├─paip-db-spring-boot-starter -- 封装数据库通用操作逻辑
│  │  ├─paip-log-spring-boot-starter -- 封装log通用操作逻辑
│  │  ├─paip-redis-spring-boot-starter -- 封装Redis通用操作逻辑
│  │  ├─paip-loadbalancer-spring-boot-starter -- 封装Ribbon和Feign的通用操作逻辑
│  │  ├─paip-sentinel-spring-boot-starter -- 封装Sentinel的通用操作逻辑
│  │  ├─paip-swagger2-spring-boot-starter -- 封装Swagger通用操作逻辑
│  │  ├─paip-oss-spring-boot-starter -- 封装OSS存储通用操作逻辑
│  │  ├─paip-zookeeper-spring-boot-starter -- 封装ZK分布式锁通用操作逻辑
│  ├─paip-config-server -- 配置中心
│  ├─paip-gateway-server -- API网关Spring Cloud Gateway[9900]
│  ├─paip-job -- 分布式任务调度一级工程
│  │  ├─job-admin -- 任务管理器[8081]
│  │  ├─job-core -- 任务调度核心代码
│  │  ├─job-executor -- 任务执行者executor样例[8082]
│  ├─paip-monitor-server -- 监控中心一级工程
│  │  ├─monitor-center -- 应用监控中心6500]
│  │  ├─log-center -- 日志中心[7200]
│  ├─paip-register-server -- 注册中心Nacos[8848]
│  ├─paip-web -- 前端一级工程[8888]
```

## 2. 启动说明

```
(1) 启动MySQL
(2) 启动Redis
(3) 启动paip-register-server的nacos
(4) 启动paip-uaa-server
(5) 启动paip-business-service\user-service
(6) 启动paip-gateway-server
(7) 启动paip-business-service\search-service
(8) 启动paip-monitor-server\log-center
(9) 启动paip-business-service\file-service
(10) 启动paip-web前端工程
```

## 3. 补充说明

```
knife4j swagger地址：https://127.0.0.1:9900/doc.html
[备注]添加新服务后，网关需要配置 generate-routes 添加要显示的路由id
```

## 4. 版权说明

```

```
