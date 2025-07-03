[LinuxServer.io](https://linuxserver.io/) 团队为您带来另一个容器版本，其特点是：

*   定期和及时的应用程序更新
*   简单的用户映射（PGID，PUID）
*   自定义基本图像与 s6 覆盖
*   在整个 LinuxServer.io 生态系统中，每周更新一次基本操作系统的通用层，以最大限度地减少空间使用、停机时间和带宽
*   定期安全更新

联系我们：

*   [博客](https://blog.linuxserver.io/) \-您可以使用我们的容器做的所有事情，包括操作指南，意见等等！
*   [Discord](https://discord.gg/YWrKVTn)\-与社区和团队的实时支持/聊天。
*   [发表](https://discourse.linuxserver.io/)在我们的社区论坛上。
*   [Fleet](https://fleet.linuxserver.io/)\-一个在线 Web 界面，显示我们维护的所有图像。
*   [GitHub](https://github.com/linuxserver)\-查看我们所有仓库的源代码。
*   [开放集体](https://opencollective.com/linuxserver) \-请考虑通过捐赠或为我们的预算做出贡献来帮助我们

[LibreOffice](https://www.libreoffice.org/) 是一个免费且功能强大的办公套件，是 OpenOffice.org（通常称为 OpenOffice）的继任者。其简洁的界面和功能丰富的工具可帮助您释放创造力并提高生产力。

[![libreoffice](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/libreoffice-logo.png)](https://www.libreoffice.org/)

## 支持的体系结构

我们利用 Docker manifest 实现多平台感知。更多信息可以从 docker [这里](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list)和我们的公告这里获得。[](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/)

简单地拉 `lscr.io/linuxserver/libreoffice:latest` 应该会为你的拱门检索正确的图像，但你也可以通过标签拉特定的拱门图像。

此映像支持的体系结构包括：

| 架构 | 可用 | 标签 |
| --- | --- | --- |
| x86-64 | ✅ | amd64- |
| arm64 | ✅ | 臂 64 v8- |
| armhf | ❌ |  |

## 应用程序安装

该应用程序可在以下网址访问：

*   [http://yourhost:3000/](http://yourhost:3000/)
*   [https://yourhost:3001/](https://yourhost:3001/)

### 所有基于 KasmVNC 的 GUI 容器中的选项

这个容器基于 [Docker Baseimage KasmVNC](https://github.com/linuxserver/docker-baseimage-kasmvnc)，这意味着有额外的环境变量和运行配置来启用或禁用特定功能。

#### 可选环境变量

| 可变 | 描述 |
| --- | --- |
| CUSTOM\_PORT | 如果需要从默认的 3000 交换，容器监听 http 的内部端口。 |
| CUSTOM\_HTTPS\_PORT | 如果需要从默认的 3001 交换，容器监听 https 的内部端口。 |
| CUSTOM\_USER | HTTP 基本身份验证用户名，abc 为默认值。 |
| PASSWORD | HTTP 基本身份验证密码，默认为 abc。如果未设置，则没有授权 |
| SUBFOLDER | 应用程序的子文件夹如果运行子文件夹反向代理，需要两个斜杠 IE/subfolder/ |
| TITLE | 网页浏览器上显示的页面标题，默认为“KasmVNC 客户端”。 |
| FM\_HOME | 这是文件管理器的主目录（登陆），默认为“/config”。 |
| START\_DOCKER | 如果设置为 false，具有特权的容器将不会自动启动 DinD Docker 设置。 |
| DRINODE | 如果安装在/dev/dri forDRI 3 GPU Acceleration 允许您指定设备使用 IE/dev/dri/renderD 128 |

#### 可选运行配置

| 可变 | 描述 |
| --- | --- |
| \--privileged | 将在容器内启动 Docker in Docker（DinD）设置，以便在隔离环境中使用 Docker。为了提高性能，将容器内的 Docker 目录挂载到主机 IE -v /home/user/docker-data:/var/lib/docker 。 |
| \-v /var/run/docker.sock:/var/run/docker.sock | 挂载到主机级 Docker 套接字中，通过 CLI 与之交互或使用支持 Docker 的应用程序。 |
| \--device /dev/dri:/dev/dri | 将 GPU 装载到容器中，这可以与 DRINODE 环境变量结合使用，以利用主机视频卡进行 GPU 加速应用。仅支持开源驱动程序 IE（Intel，AMDGPU，Radeon，ATI，Nouveau） |

### 无损模式

此容器能够通过将流质量预设更改为“无损”，以高帧率向 Web 浏览器提供真正的无损图像，更多信息[请点击此处](https://www.kasmweb.com/docs/latest/how_to/lossless.html#technical-background) 。为了从非本地主机端点使用此模式，需要使用 3001 上的 HTTPS 端口。如果使用反向代理到端口 3000，则需要按[此处所](https://github.com/linuxserver/docker-baseimage-kasmvnc#lossless)述设置特定的标头。

## 使用

下面是一些示例代码段，可帮助您开始创建容器。

### docker-compose（推荐， [点击这里获取更多信息](https://docs.linuxserver.io/general/docker-compose) ）

```
---
version: "2.1"
services:
  libreoffice:
    image: lscr.io/linuxserver/libreoffice:latest
    container_name: libreoffice
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /path/to/config:/config
    ports:
      - 3000:3000
      - 3001:3001
    restart: unless-stopped 
```

### docker 插件（ [点击这里获取更多信息](https://docs.docker.com/engine/reference/commandline/cli/) ）

```
docker run -d \
  --name=libreoffice \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 \
  -p 3001:3001 \
  -v /path/to/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/libreoffice:latest 
```

## 参数

容器镜像是使用运行时传递的参数配置的（比如上面的那些）。这些参数用冒号分隔，分别表示 `<external>：<internal>`。例如，`-p 8080：80` 将从容器内部暴露端口 `80，` 以便从容器外部端口 `8080` 上的主机 IP 访问。

| 参数 | 功能 |
| --- | --- |
| \-p 3000 | LibreOffice 桌面 GUI。 |
| \-p 3001 | LibreOffice 桌面 GUI HTTPS。 |
| \-e PUID=1000 | 对于用户 ID-请参阅下文了解解释 |
| \-e PGID=1000 | 对于 GroupID -请参见下面的说明 |
| \-e TZ=Etc/UTC | 指定要使用时区，请参阅此列表 。 |
| \-v /config | 容器中的用户主目录，存储程序设置和文档 |
| \--security-opt seccomp=unconfined | 仅对于 Docker Engine，许多现代 gui 应用程序需要它才能在旧主机上运行，因为 Docker 不知道系统调用。 |

## 文件中的环境变量（Docker secrets）

您可以使用特殊的前缀 `FILE__` 从文件中设置任何环境变量。

例如：

```
-e FILE__PASSWORD=/run/secrets/mysecretpassword 
```

将根据 `/run/secrets/mysecretpassword` 文件的内容设置环境变量 `PASSWORD`。

## 用于运行应用程序的 Umask

对于我们所有的镜像，我们都提供了覆盖默认 umask 设置的能力，这些默认 umask 设置是在容器中启动的，使用可选`的-e UMASK=022` 设置。请记住，umask 不是 chmod，它会根据它不添加的值从权限中减去。请在寻求支持之前阅读[此处](https://en.wikipedia.org/wiki/Umask) 。

## 用户/组标识符

当使用卷（`-v` 标志）时，主机操作系统和容器之间可能会出现权限问题，我们通过允许您指定用户 `PUID` 和组 `PGID 来`避免此问题。

确保主机上的所有卷目录都归您指定的同一用户所有，并且任何权限问题都会像魔术一样消失。

在这种情况下 `，PUID=1000` 和 `PGID=1000`，要找到你的使用 `id 用户`如下：

```
 $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup) 
```

## Docker 模块

我们发布了各种 [Docker Mods](https://github.com/linuxserver/docker-mods)，以在容器中启用其他功能。此图像可用的模组列表（如果有的话）以及可以应用于任何一个图像的通用模组可以通过上面的动态徽章访问。

## 支持信息

*   容器运行时的 Shell 访问： `docker exec -it libreoffice /bin/bash`
*   实时监控容器的日志：`docker logs -f libreoffice`
*   容器版本号
    *   `docker inspect -f '{{ index .Config.Labels "build_version" }}' libreoffice`
*   镜像版本号
    *   `docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/libreoffice:latest`

## 更新信息

我们的大多数图像都是静态的，版本化的，需要图像更新和容器重建来更新内部的应用程序。但也有例外（如。nextcloud，plex），我们不建议也不支持在容器内更新应用程序。请参阅上面的[应用程序设置](#application-setup)部分，以了解是否建议用于映像。

下面是更新容器的说明：

### 通过 Docker 编写

*   更新所有图像：`docker-compose pull`
    *   或更新单个映像： `docker-compose pull libreoffice`
*   让 compose 根据需要更新所有容器：`docker-compose up -d`
    *   或更新单个容器： `docker-compose up -d libreoffice`
*   您也可以删除旧的悬空图像：`docker image prune`

### 通过 Docker Run

*   更新图片： `docker pull lscr.io/linuxserver/libreoffice:latest`
*   停止正在运行的容器：`Docker Stop LibreOffice`
*   删除容器：`docker rm libreoffice`
*   按照上面的说明使用相同的 docker 运行参数重新创建一个新容器（如果正确映射到主机文件夹，则 `/config` 文件夹和设置将被保留）
*   您也可以删除旧的悬空图像：`docker image prune`

### 通过瞭望塔自动更新（仅在您不记得原始参数时使用）

*   在标签处拉取最新的图像，并在一次运行中将其替换为相同的 env 变量：
    
    ```
    docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --run-once libreoffice 
    ```
    
*   你也可以删除旧的悬空镜像：`docker image prune`
    

**注意：** 我们不支持使用 Watchtower 作为现有 Docker 容器自动更新的解决方案。事实上，我们通常不鼓励自动更新。然而，对于忘记原始参数的容器的一次性手动更新来说，这是一个有用的工具。从长远来看，我们强烈建议使用 [Docker Compose](https://docs.linuxserver.io/general/docker-compose)。

### 镜像更新通知- Diun（Docker 镜像更新通知）

*   我们建议 [Diun](https://crazymax.dev/diun/) 更新通知。不推荐或不支持自动更新容器的其他工具。

## 当地建筑

如果您希望出于开发目的或仅为了自定义逻辑而对这些映像进行本地修改：

```
git clone https://github.com/linuxserver/docker-libreoffice.git
cd docker-libreoffice
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/libreoffice:latest . 
```

ARM 变体可以使用 `multiarch/qemu-user-static` 在 x86\_64 硬件上构建

```
docker run --rm --privileged multiarch/qemu-user-static:register --reset 
```

注册后，您可以定义 dockerfile 以使用 `-f Dockerfile.aarch64`。

## 版本

*   **13.05.23：**\-重定基准到 Alpine 3.18。
*   **18.03.23：**\-重定向到 KasmVNC 基础映像。
*   **21.10.22：**\-重基到 Alpine 3.16，迁移到 s6 v3。
*   **23.12.21：**\-重定基准至 Alpine 3.15。
*   **26.09.21：**\-重定基准到 Alpine 3.14。
*   **05.04.21：**\-初始版本。