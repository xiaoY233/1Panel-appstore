# Amprobe

![MIT License](https://img.shields.io/badge/License-MIT-green.svg) ![Go Reference](https://pkg.go.dev/badge/github.com/shirou/gopsutil/v3.svg)

## 简介

`Amprobe` 是一款轻量级主机及 `Docker` 容器监控工具，它可以轻松的帮助我们完成以下几方面的工作：

- 监控主机的 CPU、内存、磁盘 IO、网络 IO情况
- 监控部署于主机上 Docker 容器的运行状态、CPU、内存使用情况
- 实时查看 Docker 容器的日志，并支持日志下载
- 针对管理员用户提供简单的 Docker 容器、镜像运维操作
- 操作日志记录

安装文档：[文档 | Amprobe (amuluze.com)](https://amprobedoc.amuluze.com/)

## 注意

配置文件在应用数据目录的`data/configs`文件夹下，默认账户的设置也在里面，注意修改。

默认存在两个账户。

- 管理员账户
  - admin
  - 123456

- 普通账户
  - amprobe
  - 123456
