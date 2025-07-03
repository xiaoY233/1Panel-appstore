# KSpeeder 镜像加速服务

KSpeeder 是一款专为 Docker 镜像加速设计的镜像服务，支持本地私有部署，适用于无法访问 DockerHub 的环境。通过 KSpeeder，您可以在局域网内搭建属于自己的镜像加速服务，大幅提升 Docker 镜像的拉取速度。

## 主要特性

- **镜像加速**：为 Docker 镜像拉取提供加速服务，解决国内访问 DockerHub 缓慢的问题。
- **私有部署**：支持在本地或局域网内私有部署，数据更安全。
- **多平台支持**：支持 iStoreOS、群晖、unRAID、macOS、Linux、Windows 等多种平台。
- **易于配置**：通过简单的 Docker Compose 即可快速部署。
- **数据与配置分离**：支持数据和配置持久化，方便迁移和备份。
- **多架构支持**：支持 amd64、arm64 等主流架构。
- **高可用性**：支持断点续传、自动重试等机制，提升镜像拉取成功率。
- **管理监控**：内置管理监控端口，便于运维和监控服务状态。

## 典型使用场景

- 局域网内为多台主机提供统一的 Docker 镜像加速服务
- 企业/团队内部搭建私有镜像加速仓库
- 无法访问 DockerHub 或访问速度较慢的环境


## 常见问题 FAQ

- **Q: 支持哪些平台？**
  A: 支持 iStoreOS、群晖、unRAID、macOS、Linux、Windows 等。
- **Q: 如何持久化数据？**
  A: 挂载 /kspeeder-data 和 /kspeeder-config 到本地目录。
- **Q: 默认端口是多少？**
  A: 主服务端口 5443，管理监控端口 5003。
- **Q: 镜像源如何配置？**
  A: 参考官方文档，配置 Docker 镜像加速地址。

## 官方文档与支持

- 官网：[https://kspeeder.istoreos.com/](https://kspeeder.istoreos.com/)
- 快速开始指南：[https://kspeeder.istoreos.com/guide/getting-started.html](https://kspeeder.istoreos.com/guide/getting-started.html)
- GitHub：[https://github.com/linkease/kspeeder](https://github.com/linkease/kspeeder) 