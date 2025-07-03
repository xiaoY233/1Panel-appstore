![](https://github.com/louislam/dockge/raw/master/frontend/public/icon.svg)

# Dockge

一个花哨、易于使用且反应灵敏的自托管 docker compose.yaml 堆栈式管理器。

![GitHub Repo stars](https://img.shields.io/github/stars/louislam/dockge?logo=github) ![Docker Pulls](https://img.shields.io/docker/pulls/louislam/dockge?logo=docker) ![Docker Image Version (latest semver)](https://img.shields.io/docker/v/louislam/dockge/latest?label=docker%20image%20ver.) ![GitHub last commit (branch)](https://img.shields.io/github/last-commit/louislam/dockge/master?logo=github)

![](https://github.com/louislam/dockge/assets/1336778/26a583e1-ecb1-4a8d-aedf-76157d714ad7)

观看视频：\[https://youtu.be/AWAlOQeNpgU?t=48\](https://youtu.be/AWAlOQeNpgU?t=48)

## ⭐ 特点

*   管理 `compose.yaml`
    *   创建/编辑/启动/停止/重启/删除
    *   更新 Docker 镜像
*   `compose.yaml` 的交互式编辑器
*   交互式网络终端
*   响应式
    *   一切都很响应。进度（下拉/上拉）和终端输出都是实时的
*   易于使用且界面精美
    *   如果你喜欢 Uptime Kuma 的 UI/UX，你也会喜欢这个
*   将 `docker run ...` 命令转换为 `compose.yaml`
*   基于文件的架构
    *   Docker 不会绑架你的 compose 文件，它们会像往常一样存储在你的驱动器上。你可以使用正常的 `docker compose` 命令与之交互![](https://github.com/louislam/dockge/assets/1336778/cc071864-592e-4909-b73a-343a57494002)

![](https://github.com/louislam/dockge/assets/1336778/89fc1023-b069-42c0-a01c-918c495f1a6a)

## 🔧 如何安装

要求：

*   [Docker](https://docs.docker.com/engine/install/) 20+ / Podman
*   （仅限 Podman）podman-docker（Debian：`apt install podman-docker`）
*   操作系统：
    *   可以运行 Docker/Podman 的主要 Linux 发行版，例如：
        *   ✅ Ubuntu
        *   ✅ Debian（Bullseye 或更新版）
        *   ✅ Raspbian（Bullseye 或更新版）
        *   ✅ CentOS
        *   ✅ Fedora
        *   ✅ ArchLinux
    *   ❌ Debian/Raspbian Buster 或更低版本不受支持
    *   ❌ Windows（将稍后支持）
*   架构：armv7, arm64, amd64（即 x86\_64）

### 基本

*   默认栈目录：`/opt/stacks`
*   默认端口：5001

```
# Create directories that store your stacks and stores Dockge's stack
mkdir -p /opt/stacks /opt/dockge
cd /opt/dockge

# Download the compose.yaml
curl https://raw.githubusercontent.com/louislam/dockge/master/compose.yaml --output compose.yaml

# Start the server
docker compose up -d

# If you are using docker-compose V1 or Podman
# docker-compose up -d
```

Dockge 现在运行在 [http://localhost:5001](http://localhost:5001)

### 高级

如果您想将栈存储在其他目录，可以使用以下带有自定义查询字符串的 URL 生成您的 compose.yaml 文件。

```
# Download your compose.yaml
curl "https://dockge.kuma.pet/compose.yaml?port=5001&stacksPath=/opt/stacks" --output compose.yaml
```

*   port=`5001`
*   stacksPath=`/opt/stacks`

交互式 compose.yaml 生成器可在以下网址获取： [https://dockge.kuma.pet](https://dockge.kuma.pet)

## 如何更新

```bash
cd /opt/dockge
docker compose pull && docker compose up -d
```

## 屏幕截图

![](https://github.com/louislam/dockge/assets/1336778/e7ff0222-af2e-405c-b533-4eab04791b40)

![](https://github.com/louislam/dockge/assets/1336778/7139e88c-77ed-4d45-96e3-00b66d36d871)

![](https://github.com/louislam/dockge/assets/1336778/f019944c-0e87-405b-a1b8-625b35de1eeb)

![](https://github.com/louislam/dockge/assets/1336778/a4478d23-b1c4-4991-8768-1a7cad3472e3)

## 动机

*   我已经使用 Portainer 一段时间了，但在堆栈管理方面，我有时对其不太满意。例如，有时我尝试部署堆栈时，加载图标会空转几分钟而没有进展。有时错误信息也不清晰。
*   尝试使用 ES 模块 + TypeScript 进行开发（最初，我计划使用 Deno 或 Bun.js，但它们不支持 arm64，所以我退回到 Node.js）

如果您喜欢这个项目，请考虑给它一个⭐。

## 🗣️ 社区和贡献

### 错误报告

[https://github.com/louislam/dockge/issues](https://github.com/louislam/dockge/issues)

### 寻求帮助/讨论

[https://github.com/louislam/dockge/discussions](https://github.com/louislam/dockge/discussions)

### Translation

如果您想将 Dockge 翻译成您的语言，请阅读[翻译指南](https://github.com/louislam/dockge/blob/master/frontend/src/lang/README.md)

### 创建一个拉取请求

请务必阅读[指南](https://github.com/louislam/dockge/blob/master/CONTRIBUTING.md) ，因为我们不接受所有类型的拉取请求，也不希望浪费您的时间。

## 常见问题

#### "Dockge"?

"Dockge" 是一个我创造的合成词。我最初希望它听起来像 `Dodge`，但显然很多人称之为 `Dockage`，这也是可以接受的。

命名灵感来自 Twitch 表情包，如 `sadge`、`bedge` 或 `wokege`。它们都以 `-ge` 结尾。

#### 我能否在不使用 `compose.yaml` 的情况下管理单个容器？

Dockge 的主要目标是尝试使用 docker `compose.yaml` 来处理所有事情。如果您只想管理单个容器，您可以直接使用 Portainer 或 Docker CLI。

#### 我能管理现有的堆栈吗？

是的，您可以。但是，您需要将您的 compose 文件移动到堆栈目录：

1.  停止您的堆栈
2.  将你的 compose 文件移动到 `/opt/stacks/<stackName>/compose.yaml`
3.  在 Dockge 中，点击右上角下拉菜单中的“扫描堆叠文件夹”按钮
4.  现在你应该能在列表中看到你的堆叠

#### Dockge 是 Portainer 的替代品吗？

是的或否。Portainer 提供了许多 Docker 功能。而 Dockge 目前仅专注于 docker-compose，拥有更好的用户界面和用户体验。

如果您只想使用 docker-compose 来管理容器，答案可能是“是”。

如果您还需要管理像 docker 网络、单个容器这样的功能，答案可能是“否”。

#### 我能否同时安装 Dockge 和 Portainer？

是的，你可以。

## 其他人

Dockge 是基于 [Compose V2](https://docs.docker.com/compose/migrate/) 构建的。 `compose.yaml` 也称为 `docker-compose.yml`。