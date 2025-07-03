[中文文档](readme-zh.md) / [English Document](README.md)

# Better Sync Service

<p align="center">
    <img src="https://img.shields.io/github/release/haierkeys/obsidian-better-sync-service" alt="version">
    <img src="https://img.shields.io/github/license/haierkeys/obsidian-better-sync-service" alt="license">
</p>

[BetterSync For Obsidian](https://github.com/haierkeys/obsidian-better-sync) 服务端,基于 Golang + Websocket
构建的高性能笔记实时同步服务

## 功能清单

- [x] 多端笔记实时同步
- [ ] 笔记云存储同步备份 - s3
- [ ] 笔记云存储同步备份 - 阿里云
- [ ] 笔记云存储同步备份 - CF R2
- [ ] 笔记云存储同步备份 - minio
- [ ] 笔记云存储同步备份 - webdav
- [ ] 笔记云存储同步备份 - 增加备份策略
- [x] Web页面管理
- [x] 目前仅支持 Sqlite 存储
- [ ] 增加git维护版本
- [ ] 基于 google-diff-match-patch 算法优化

## BUGLIST (已知问题)

- webgui 除了登录/注册/复制配置之外的 界面无实际功能或点击异常
- 部分用户连接ws后, 认证成功,但是不显示nickname

## 更新日志

查看完整的更新内容，请访问 [Changelog](https://github.com/haierkeys/obsidian-better-sync-service/releases)。

## 价格

本软件是开源且免费的。如果您想表示感谢或帮助支持继续开发，可以通过以下方式为我提供支持：

[<img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" alt="BuyMeACoffee" width="100">](https://ko-fi.com/haierkeys)

## 私有部署

- 目录设置

  ```bash
  # 创建项目所需的目录
  mkdir -p /data/better-sync
  cd /data/better-sync

  mkdir -p ./config && mkdir -p ./storage/logs && mkdir -p ./storage/uploads
  ```

  首次启动如果不下载配置文件,程序会自动生成一个默认配置到 **config/config.yaml**

  如果你想从网络下载一个默认配置 使用以下命令来下载

  ```bash
  # 从开源库下载默认配置文件到配置目录
  wget -P ./config/ https://raw.githubusercontent.com/haierkeys/obsidian-better-sync-service/main/config/config.yaml
  ```

- 二进制安装

  从 [Releases](https://github.com/haierkeys/obsidian-better-sync-service/releases) 下载最新版本，解压后执行：

  ```bash
  ./better-sync-service run -c config/config.yaml
  ```


- 容器化安装（Docker 方式）

  Docker 命令:

  ```bash
  # 拉取最新的容器镜像
  docker pull haierkeys/obsidian-better-sync-service:latest

  # 创建并启动容器
  docker run -tid --name better-sync-service \
          -p 9000:9000 -p 9001:9001 \
          -v /data/better-sync/storage/:/better-sync/storage/ \
          -v /data/better-sync/config/:/better-sync/config/ \
          haierkeys/obsidian-better-sync-service:latest
  ```

  Docker Compose
  使用 *containrrr/watchtower* 来监听镜像实现自动更新项目
  **docker-compose.yaml** 内容如下

  ```yaml
  # docker-compose.yaml
  services:
    better-sync:
      image: haierkeys/obsidian-better-sync-service:latest  # 你的应用镜像
      container_name: better-sync
      ports:
        - "9000:9000"  # 映射端口 9000
        - "9001:9001"  # 映射端口 9001
      volumes:
        - /data/better-sync/storage/:/better-sync/storage/  # 映射存储目录
        - /data/better-sync/config/:/better-sync/config/    # 映射配置目录

  ```

  执行 **docker compose**

  以服务方式注册 docker 容器

  ```bash
  docker compose up -d
  ```

  注销并销毁 docker 容器

  ```bash
  docker compose down
  ```

### 使用

访问 `WebGUI` 地址 `http://{IP:PORT}`

点击在 复制 API 配置 获取配置信息, 到 `BetterSync For Obsidian` 插件中粘贴即可

首次访问需要进行用户注册,如需关闭注册, 请修改 `user.register-is-enable` 为 `false`

### 配置说明

默认的配置文件名为 **config.yaml**，请将其放置在 **根目录** 或 **config** 目录下。

更多配置详情请参考：

- [config/config.yaml](config/config.yaml)

## 其他资源

- [Better Sync For Obsidian](https://github.com/haierkeys/obsidian-better-sync)