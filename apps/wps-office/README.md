The [LinuxServer.io](https://linuxserver.io/) 团队为您带来了另一个容器发布，包含：

*   定期且及时的应用更新
*   简单的用户映射（PGID, PUID）
*   自定义基础镜像，带有 s6 覆盖
*   每周为基础操作系统进行更新，并在整个 LinuxServer.io 生态系统中使用共同的层，以最小化空间使用、停机时间和带宽
*   常规安全更新

访问我们：

*   \[Blog\] - 有关我们容器的所有功能，包括使用指南、观点等内容！
*   [Discord](https://discord.gg/YWrKVTn) - 实时支持/与社区和团队进行聊天。
*   [Discourse](https://discourse.linuxserver.io/) - 在我们的社区论坛发帖。
*   [Fleet](https://fleet.linuxserver.io/) - 一个在线的网页界面，显示我们维护的所有镜像。
*   [GitHub](https://github.com/linuxserver) - 查看我们所有仓库的源代码。
*   [Open Collective](https://opencollective.com/linuxserver) - 请考虑通过捐赠或资助我们的预算来帮助我们

[WPS Office](https://www.wps.com/) 是一款轻量、功能丰富且兼容性高的综合办公套件。作为一款便捷且专业的办公软件，WPS Office 允许你在 Writer、Presentation、Spreadsheet 和 PDF 中编辑文件，从而提高工作效率。

[![wps-office](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/wps-office-icon.png)](https://www.wps.com/)

## 支持的架构

我们利用 docker manifest 来实现多平台支持。更多详细信息请参阅 docker [这里](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) 和 我们的公告 [这里](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/) 。

简单地拉取 `lscr.io/linuxserver/wps-office:latest` 应该会获取到正确的架构图像，但你也可以通过标签拉取特定的架构图像。

此图像支持的架构有：

| 架构 | 可用 | Tag |
| --- | --- | --- |
| x86-64 | ✅ | amd64-<版本标签> |
| arm64 | ❌ |  |
| armhf | ❌ |  |

## 应用设置

应用可通过以下地址访问：

*   [http://yourhost:3000/](http://yourhost:3000/)
*   [https://yourhost:3001/](https://yourhost:3001/)

### KasmVNC 基础的 GUI 容器中的选项

此容器基于 [Docker Baseimage KasmVNC](https://github.com/linuxserver/docker-baseimage-kasmvnc)，这意味着存在额外的环境变量和运行配置，可以启用或禁用特定功能。

#### 可选的环境变量

| 变量 | 描述 |
| --- | --- |
| CUSTOM\_PORT | 容器监听的内部端口，用于 http，如果需要从默认的 3000 端口更改。 |
| CUSTOM\_HTTPS\_PORT | 容器监听的内部端口，用于 https，如果需要从默认的 3001 端口更改。 |
| CUSTOM\_USER | HTTP 基本认证用户名，默认为 abc。 |
| PASSWORD | HTTP 基本认证密码，默认为 abc。如果未设置，则无需认证。 |
| SUBFOLDER | 如果运行子文件夹反向代理，则需要在应用中创建一个子文件夹，例如 \`/subfolder/\`。 |
| TITLE | 网页浏览器中显示的页面标题，默认为“KasmVNC 客户端”。 |
| FM\_HOME | 这是文件管理器的主目录（起始目录），默认为 \`/config\`。 |
| START\_DOCKER | 如果设置为 false，则不会自动启动 DinD Docker 环境。 |
| DRINODE | 如果在 /dev/dri 挂载以启用 DRI3 GPU 加速 ，你可以指定要使用的设备，例如 /dev/dri/renderD128 |

#### 可选运行配置

| 变量 | 描述 |
| --- | --- |
| \--privileged | 将在容器内部启动一个 Docker 在 Docker (DinD) 设置，以便在隔离环境中使用 Docker。为了提高性能，请将 Docker 目录挂载到主机上，例如 -v /home/user/docker-data:/var/lib/docker |
| \-v /var/run/docker.sock:/var/run/docker.sock | 在主机级别挂载 Docker 套接字，以便通过命令行界面与之交互或使用 Docker 启动的应用程序。 |
| \--device /dev/dri:/dev/dri | 将 GPU 挂载到容器中，可以与 DRINODE 环境变量结合使用，以利用主机的显卡进行 GPU 加速的应用程序。仅支持开源驱动程序（如 Intel、AMDGPU、Radeon、ATI、Nouveau） |

### 无损模式

此容器可以通过将 Stream Quality 预设更改为“无损”模式，在高帧率下将真正的无损图像传输到您的网络浏览器。更多信息请参阅 [此处](https://www.kasmweb.com/docs/latest/how_to/lossless.html#technical-background) 。要从非本地主机端点使用此模式，需要使用 3001 端口的 HTTPS。如果通过反向代理访问端口 3000，则需要设置特定的标头，具体请参阅 [此处](https://github.com/linuxserver/docker-baseimage-kasmvnc#lossless) 。

## 使用方法

以下是一些示例片段，帮助你开始创建容器。

### docker-compose（推荐，\[点击这里获取更多信息\](#0)）

```
---
version: "2.1"
services:
  wps-office:
    image: lscr.io/linuxserver/wps-office:latest
    container_name: wps-office
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
    shm_size: "1gb"
    restart: unless-stopped 
```

### docker cli（\[点击这里获取更多信息\](#0)）

```
docker run -d \
  --name=wps-office \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 \
  -p 3001:3001 \
  -v /path/to/config:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  lscr.io/linuxserver/wps-office:latest 
```

## 参数

容器镜像通过在运行时传递参数（如上文所示）进行配置。这些参数通过冒号分隔，分别表示外部和内部。例如，\`-p 8080:80\` 会将容器内部的端口 \`80\` 映射到主机的 IP 地址上的端口 \`8080\`。

| 参数 | 功能 |
| --- | --- |
| \-p 3000 | WPS Office 桌面界面。 |
| \-p 3001 | WPS Office 桌面界面 HTTPS。 |
| \-e PUID=1000 | for UserID - 请参见下方说明 |
| \-e PGID=1000 | for GroupID - 请参见下方说明 |
| \-e TZ=Etc/UTC | 指定要使用的时区，参见此 列表 。 |
| \-v /config | 容器中的用户主目录，用于存储程序设置和文档 |
| \--shm-size= | 这对于电子应用程序的正常运行是必需的。 |
| \--security-opt seccomp=unconfined | 仅对 Docker 引擎而言，许多现代的 GUI 应用在较旧的主机上运行时需要此设置，因为 Docker 不认识这些系统调用。 |

## 环境变量从文件（Docker 秘钥）

你可以通过使用一个特殊的前缀 \``FILE__`\` 来从文件中设置任何环境变量。

例如：

```
-e FILE__PASSWORD=/run/secrets/mysecretpassword 
```

将根据 \`/run/secrets/mysecretpassword\` 文件的内容设置环境变量 \``PASSWORD`\`。

## 运行应用程序的 umask

对于所有图像，我们提供了使用可选的 \`-e UMASK=022\` 设置来覆盖容器内启动的服务的默认 umask 设置的能力。请注意，umask 不是 chmod，它的值会从权限中减去，而不是增加。在请求支持之前，请先阅读 [这里](https://en.wikipedia.org/wiki/Umask) 。

## 用户 / 组标识符

使用卷（-v 标志）时，可能会在主机操作系统和容器之间出现权限问题，我们通过允许您指定用户 PUID 和组 PGID 来避免这个问题。

确保主机上的任何卷目录由您指定的同一用户拥有，任何权限问题都会神奇地消失。

在这个实例中 `PUID=1000` 和 `PGID=1000`，要找到你的值，请使用 `id user`，如下所示：

```
 $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup) 
```

## Docker Mods

我们发布了各种 [Docker Mods](https://github.com/linuxserver/docker-mods) 以在容器中启用额外的功能。此镜像可用的 Mods 列表（如果有）以及可以应用于我们任何镜像的通用 Mods 可通过上方的动态徽章访问。

## 支持信息

*   在容器运行时访问 Shell: `docker exec -it wps-office /bin/bash`
*   实时监控容器的日志：`docker logs -f wps-office`
*   容器版本号
    *   `docker inspect -f '{{ index .Config.Labels "build_version" }}' wps-office`
*   image 版本号
    *   `docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/wps-office:latest`

## 更新信息

我们的大多数镜像都是静态的、版本化的，需要更新镜像并重新创建容器才能更新应用程序。除了少数例外（例如 nextcloud、plex），我们不建议或支持在容器内部更新应用程序。请参阅上方的[应用程序设置](#application-setup)部分，查看该镜像是否推荐进行更新。

以下是更新容器的步骤：

### 通过 Docker Compose

*   更新所有镜像：`docker-compose pull`
    *   或更新单个镜像： `docker-compose pull wps-office`
*   让 Compose 更新所有必要的容器：`docker-compose up -d`
    *   或更新单个容器： `docker-compose up -d wps-office`
*   你也可以移除旧的孤立镜像：\`docker image prune\`

### 通过 Docker Run

*   更新镜像： `docker pull lscr.io/linuxserver/wps-office:latest`
*   停止运行中的容器：`docker stop wps-office`
*   删除容器：`docker rm wps-office`
*   使用相同的 \`docker run\` 参数重新创建一个新的容器（如果正确映射到主机文件夹，您的 `/config` 文件夹和设置将被保留）
*   你也可以移除旧的孤立镜像：\`docker image prune\`

### 通过 Watchtower 自动更新程序（仅在您不记得原始参数时使用）

*   拉取最新标签的镜像并在一次运行中用相同的环境变量替换它：
    
    ```
    docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --run-once wps-office 
    ```
    
*   你也可以移除旧的孤立镜像：\`docker image prune\`
    

\*\*注意\*\*：我们不推荐使用 Watchtower 来自动化现有 Docker 容器的更新。实际上，我们一般不建议自动化更新。然而，这个工具对于一次性手动更新忘记原始参数的容器是有用的。从长远来看，我们强烈建议使用 Docker Compose。

### 镜像更新通知 - Diun（Docker Image Update Notifier）

*   我们推荐使用 [Diun](https://crazymax.dev/diun/) 获取更新通知。其他在无人干预的情况下自动更新容器的工具不被推荐或支持。

## 本地构建

如果您为了开发目的或只是自定义逻辑而对这些镜像进行本地修改：

```
git clone https://github.com/linuxserver/docker-wps-office.git
cd docker-wps-office
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/wps-office:latest . 
```

在 x86\_64 硬件上可以使用 `multiarch/qemu-user-static` 构建 ARM 变体。

```
docker run --rm --privileged multiarch/qemu-user-static:register --reset 
```

注册后，您可以使用 `-f Dockerfile.aarch64` 定义要使用的 Dockerfile。

## 版本

*   **21.04.23：** - 初始发布。