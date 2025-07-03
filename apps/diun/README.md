# Diun

Diun 是一个用于监控 Docker 镜像更新并发送通知的命令行工具。

## 功能特性

- 自动监控 Docker 镜像更新
- 支持多种通知方式（Discord、Telegram、Slack、邮件等）
- 支持多种提供者（Docker、Kubernetes、Swarm、Nomad等）
- 基于 Cron 表达式的调度
- 支持多种架构（amd64、arm64、arm/v6、arm/v7等）
- 轻量级设计，资源占用少

## 使用方法

1. 部署后 Diun 会自动开始监控 Docker 镜像
2. 默认每6小时检查一次镜像更新
3. 当检测到镜像更新时，会发送通知
4. 通过 Docker 标签 `diun.enable=true` 控制哪些容器被监控

## 配置说明

- **时区**：Asia/Shanghai（上海时区）
- **数据存储**：`./data` 目录包含 bbolt 数据库
- **配置文件**：`./diun.yml` 包含所有监控和通知配置

## 默认配置

应用使用以下默认配置：

```yaml
watch:
  workers: 20
  schedule: "0 */6 * * *"
  firstCheckNotif: false

providers:
  docker:
    watchByDefault: true
```

## 自定义配置

如需自定义监控、通知等配置，请编辑 `diun.yml` 文件。参考官方文档进行配置：

- [配置概述](https://crazymax.dev/diun/configuration/overview/)
- [通知配置](https://crazymax.dev/diun/notifications/)
- [提供者配置](https://crazymax.dev/diun/providers/)

## 支持的提供者

- **Docker**：监控 Docker 容器和镜像
- **Kubernetes**：监控 Kubernetes 集群
- **Swarm**：监控 Docker Swarm 服务
- **Nomad**：监控 HashiCorp Nomad 任务
- **Dockerfile**：监控 Dockerfile 中的基础镜像
- **File**：从文件读取镜像列表

## 支持的通知方式

- Discord、Telegram、Slack
- 邮件、Matrix、MQTT
- Pushover、Rocket.Chat
- Webhook、Script、Signal
- Gotify、Ntfy、Teams

## 监控配置

要监控特定的 Docker 容器，在容器标签中添加：

```yaml
labels:
  - "diun.enable=true"
  - "diun.watch_repo=true"  # 可选，监控仓库更新
```

## 相关链接

- [官方网站](https://crazymax.dev/diun/)
- [GitHub 项目](https://github.com/crazy-max/diun)
- [Docker Hub](https://hub.docker.com/r/crazymax/diun/)
- [基础示例](https://crazymax.dev/diun/usage/basic-example/) 