# Aria2 Pro Docker

[![LICENSE](https://img.shields.io/github/license/P3TERX/Aria2-Pro-Docker?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Aria2-Pro-Docker/blob/master/LICENSE) [![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Aria2-Pro-Docker.svg?style=flat-square&label=Stars&logo=github)](https://github.com/P3TERX/Aria2-Pro-Docker/stargazers) [![GitHub forks](https://img.shields.io/github/forks/P3TERX/Aria2-Pro-Docker.svg?style=flat-square&label=Forks&logo=github)](https://github.com/P3TERX/Aria2-Pro-Docker/fork) [![Docker Stars](https://img.shields.io/docker/stars/p3terx/aria2-pro.svg?style=flat-square&label=Stars&logo=docker)](https://hub.docker.com/r/p3terx/aria2-pro) [![Docker Pulls](https://img.shields.io/docker/pulls/p3terx/aria2-pro.svg?style=flat-square&label=Pulls&logo=docker&color=orange)](https://hub.docker.com/r/p3terx/aria2-pro) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/P3TERX/Aria2-Pro-Docker/Docker%20images%20build%20test?label=Actions&logo=github&style=flat-square)

一个完美的 Aria2 Docker 镜像。开箱即用，只需添加下载任务，无需考虑其他任何事情。

## 功能

*   支持平台: `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6`
*   完整功能: `Async DNS`, `BitTorrent`, `Firefox3 Cookie`, `GZip`, `HTTPS`, `Message Digest`, `Metalink`, `XML-RPC`, `SFTP`
*   `max-connection-per-server` 无限制。
*   在慢速传输（`lowest-speed-limit`）和连接关闭时重试
*   高速 BT 下载
*   自动获取 BitTorrent 跟踪器
*   下载错误自动删除文件
*   下载取消自动删除文件
*   自动清除 `.aria2` 后缀文件
*   自动清除 `.torrent` 后缀文件
*   不丢失任务进度，不重复下载
*   更多强大功能

## 使用方法

### Docker CLI

*   无论使用何种架构平台，只需使用以下命令启动容器（只需替换 `<TOKEN>` 字段）：

```
docker run -d \
    --name aria2-pro \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e PUID=$UID \
    -e PGID=$GID \
    -e UMASK_SET=022 \
    -e RPC_SECRET=<TOKEN> \
    -e RPC_PORT=6800 \
    -p 6800:6800 \
    -e LISTEN_PORT=6888 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    -v $PWD/aria2-config:/config \
    -v $PWD/aria2-downloads:/downloads \
    p3terx/aria2-pro
```

*   然后你需要一个 WebUI 来进行控制，比如 [AriaNg](https://github.com/mayswind/AriaNg)。开发者提供了这个链接[可以直达](http://ariang.mayswind.net/latest) 。或者你可以使用 Docker 自行部署：

```
docker run -d \
    --name ariang \
    --log-opt max-size=1m \
    --restart unless-stopped \
    -p 6880:6880 \
    p3terx/ariang
```

> **提示：** 防火墙需要打开端口。

### Docker Compose

*   下载 [组合文件](https://github.com/P3TERX/Aria2-Pro-Docker/blob/master/docker-compose.yml)

```
wget git.io/aria2-pro.yml
```

*   编辑 Compose 文件

```
vim aria2-pro.yml
```

*   Compose up

```
docker-compose -f aria2-pro.yml up -d
```

### 其他

*   [UNRAID 的 Docker 模板](https://github.com/P3TERX/unraid-docker-templates)
*   [Synology DSM 下的 Docker 使用教程（中文）](https://p3terx.com/archives/synology-nas-docker-advanced-tutorial-deploy-aria2-pro.html)

## 参数

| 参数 | 功能 |
| --- | --- |
| \-e PUID=$UID-e PGID=$GID | 将 UID 和 GID 绑定到容器中，这意味着你可以使用非 root 用户来管理下载的文件。 |
| \-e UMASK\_SET=022 | 对于 Aria2 的 umask 设置，可选，默认如果不设置为 \`022\`。 |
| \-e RPC\_SECRET= | 设置 RPC 保密授权令牌。默认值：\`P3TERX\` |
| \-e RPC\_PORT=6800 | 设置 RPC 监听端口。 |
| \-p 6800:6800 | 绑定 RPC 监听端口。 |
| \-e LISTEN\_PORT=6888 | 设置 BitTorrent/DHT 监听的 TCP/UDP 端口号。 |
| \-p 6888:6888 | 绑定 BT 监听端口（TCP）。 |
| \-p 6888:6888/udp | 绑定 DHT 监听端口（UDP）。 |
| \-v :/config | 包含所有相关的配置文件。 |
| \-v :/downloads | 磁盘下载位置。 |
| \-e DISK\_CACHE= | 设置磁盘缓存大小。SIZE 可以包含 K 或 M（1K = 1024，1M = 1024K），例如 64M。 |
| \-e IPV6\_MODE= | 是否启用 Aria2 的 IPv6 支持。可选：\`true\` 或 \`false\`。在配置文件(aria2.conf)中设置选项 \`disable-ipv6=false\` 和 \`enable-dht6=true\`。 |
| \-e UPDATE\_TRACKERS= | 是否自动更新 BT 跟踪器列表。可选：\`true\` 或 \`false\`，未设置时默认为 \`true\`。 |
| \-e CUSTOM\_TRACKER\_URL= | 自定义 BT 跟踪器列表 URL。未设置时，将从 \`https://trackerslist.com/all\_aria2.txt\` 获取。 |
| \-e TZ=Asia/Shanghai | 指定时区，例如 \`Asia/Shanghai\`。 |

## 高级

我正在努力提高我的英语水平，所以这部分以后可能会有详细的解释。如果你能看中文，可以去我的博客 [查看详细内容](https://p3terx.com/archives/docker-aria2-pro.html) 。

## 致谢

*   [aria2](https://github.com/aria2/aria2)
*   [P3TERX/aria2.conf](https://github.com/P3TERX/aria2.conf)
*   [P3TERX/Aria2-Pro-Core](https://github.com/P3TERX/Aria2-Pro-Core)
*   [just-containers/s6-overlay](https://github.com/just-containers/s6-overlay)
*   [XIU2/TrackersListCollection](https://github.com/XIU2/TrackersListCollection)

## 许可证

[MIT](https://github.com/P3TERX/Aria2-Pro-Docker/blob/master/LICENSE) © P3TERX