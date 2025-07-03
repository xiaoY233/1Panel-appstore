![photoview logo](https://github.com/photoview/photoview/raw/master/screenshots/photoview-logo.svg)

[![License](https://img.shields.io/github/license/viktorstrate/photoview)](./LICENSE.md) [![GitHub contributors](https://img.shields.io/github/contributors/viktorstrate/photoview)](https://github.com/viktorstrate/photoview/graphs/contributors) [![Docker Pulls](https://img.shields.io/docker/pulls/viktorstrate/photoview)](https://hub.docker.com/r/viktorstrate/photoview) [![Docker builds](https://github.com/photoview/photoview/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/photoview/photoview/actions/workflows/build.yml) [![codecov](https://codecov.io/gh/photoview/photoview/branch/master/graph/badge.svg?token=AATZKC93F7)](https://codecov.io/gh/photoview/photoview)

![screenshot](https://github.com/photoview/photoview/raw/master/screenshots/timeline.png)

Photoview 是一款简单易用的照片画廊，专为摄影师设计，旨在提供一种快速简便的目录导航方式，支持数千张高分辨率照片。

您可以在文件系统中的某个目录中配置 Photoview 来查找照片和视频。扫描器会自动检测您的媒体，并生成缩略图以使浏览速度极快。

当您的媒体被扫描后，它们会在网站上显示出来，组织方式与文件系统中的相同。

> 如果您有关于安装或开发的问题，欢迎加入 Discord 服务器 [https://discord.gg/jQ392948u9](https://discord.gg/jQ392948u9)

## 演示站点

访问 [https://photos.qpqp.dk/](https://photos.qpqp.dk/)

用户名: **demo** 密码: **demo**

## 内容

*   [演示站点](#demo-site)
*   [内容](#contents)
*   [主要功能](#main-features)
*   [支持的平台](#supported-platforms)
*   [为什么又一个自托管的照片画廊](#why-yet-another-self-hosted-photo-gallery)
*   [快速入门 - 使用 Docker 部署](#getting-started---setup-with-docker)
    *   [初始设置](#initial-setup)
*   [设置开发环境](#set-up-development-environment)
    *   [本地设置](#local-setup)
    *   [启动 API 服务器](#start-api-server)
    *   [启动 UI 服务器](#start-ui-server)
*   [赞助商](#sponsors)

## 主要功能

*   **紧密关联文件系统** 。网站展示服务器本地文件系统中的图片，目录映射为相册。
*   **用户管理** 。每个用户在本地文件系统中创建一个路径，该路径内的照片可以被该用户访问。
*   **分享** 。相册以及单个媒体内容可以轻松通过公共链接分享，链接可以选配密码保护。
*   **专为摄影设计** 。Photoview 是为摄影师打造的，因此支持 **RAW** 文件格式和 **EXIF** 解析。
*   **视频支持** 。支持许多常见的视频格式。视频会自动优化以适应网络播放。
*   **人脸识别** 。照片中会自动检测人脸，相同人物的照片会被归类在一起。
*   **性能出色** 。会自动生成缩略图，照片在屏幕上可见时才会加载。在全屏模式下，会先显示缩略图，直到高分辨率图片完全加载完毕。
*   **安全** 。所有媒体资源都使用了 cookie-token 保护，所有密码都进行了妥善哈希处理，API 使用了严格的 [CORS 策略](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) 。

## 支持的平台

*   [Docker](https://hub.docker.com/r/viktorstrate/photoview/)
*   [Arch Linux Aur](https://aur.archlinux.org/packages/photoview)
*   [Unraid](https://forums.unraid.net/topic/103028-support-photoview-corneliousjd-repo/)
*   EmbassyOS: [公告](https://start9labs.medium.com/new-service-photoview-72ee681b2ff0) , [仓库](https://github.com/Start9Labs/embassyos-photoview-wrapper)
*   [YunoHost](https://github.com/YunoHost-Apps/photoview_ynh)

## 为何再添一个自托管照片画廊

已经存在很多开源的自托管照片画廊了。这里列举几个，仅作参考。

*   [Piwigo](https://github.com/Piwigo/Piwigo)
*   [LibrePhotos](https://github.com/LibrePhotos/librephotos)
*   [Photoprism](https://github.com/photoprism/photoprism)
*   [Lychee](https://github.com/LycheeOrg/Lychee)

那么为什么还要再做一个呢？我喜欢拍照，并且把所有的照片都存储在我的本地文件服务器上。这样很好，因为我可以直接在文件系统上组织我的照片，方便移动或备份。

然而，问题是 RAW 格式的照片从文件服务器上导航起来非常麻烦，即使是局域网内也是如此。

我的服务器上有很多旧的家庭照片，我也希望我的家人能够访问这些照片。还有一些照片，我希望可以直接分享给其他人，而不需要他们先注册账号。

因此，我需要一个解决方案，能够做到以下几点：

*   基于扫描的自动整理照片的方法
*   支持 RAW 和 EXIF 解析
*   支持多个用户，并且可以分享相册和照片，也可以公开分享
*   简单快速易用

所有的照片画廊都能做到我需要的很多事情，但没有一个能全部做到。

## 开始使用 - 使用 Docker 部署

> 本节描述了如何在服务器上使用 Docker 部署 Photoview。请确保您的服务器上已安装并运行了 Docker 和 docker-compose。

1.  在您的计算机上创建一个新的 `docker-compose.yml` 文件，并将 [docker-compose.example.yml](/docker-compose.example.yml) 文件的内容复制到新文件中。
2.  编辑 `docker-compose.yml`，找到以 `Change This:` 开头的注释，并更改相应的值，以正确匹配您的设置。如果您只是本地测试，无需进行任何更改。
3.  通过运行以下命令启动服务器

```bash
$ docker-compose up -d
```

如果 `docker-compose.yml` 文件中未更改端点或端口，则 Photoview 现在可以通过 [http://localhost:8000](http://localhost:8000) 访问

### 初始设置

如果一切设置正确，在首次访问网站时，你应该会被呈现一个初始设置向导。

![Initial setup](https://github.com/photoview/photoview/raw/master/screenshots/initial-setup.png)

请输入一个新的用户名和密码。

对于照片路径，请输入 Docker 容器中存放照片的路径。这个路径可以在 \`docker-compose.yml\` 文件下的 \`api\` -> \`volumes\` 中设置。默认位置是 \`/photos\`。

将会创建一个新的管理员用户，该用户可以访问初始设置中提供的路径下的照片。

照片在显示之前需要进行扫描，你可以通过导航到`设置`并点击`扫描所有`来手动开始扫描

## 设置开发环境

### 本地设置

1.  安装本地 MySQL 服务器，并创建一个新的数据库
2.  将 `/api/example.env` 重命名为 `.env`，并更新 `MYSQL_URL` 字段
3.  将 `/ui/example.env` 重命名为 `.env`

### 启动 API 服务器

确保安装了 [golang](https://golang.org/)

一些 C 库需要编译 API，请参阅 [go-face 要求](https://github.com/Kagami/go-face#requirements) 以获取更多详细信息。这些库可以按照以下方式安装：

```sh
# Ubuntu
sudo add-apt-repository ppa:strukturag/libheif
sudo add-apt-repository ppa:strukturag/libde265
sudo apt-get update
sudo apt-get install libdlib-dev libblas-dev libatlas-base-dev liblapack-dev libjpeg-turbo8-dev libheif-dev
# Debian
sudo apt-get install libdlib-dev libblas-dev libatlas-base-dev liblapack-dev libjpeg62-turbo-dev libheif-dev
# macOS
brew install dlib libheif

```

然后运行以下命令：

```bash
cd ./api
go install
go run server.go
```

### 启动 UI 服务器

请确保 [node](https://nodejs.org/en/) 已安装。在新的终端窗口中运行以下命令：

```bash
cd ./ui
npm install
npm start
```

现在可以访问站点：[localhost:1234](http://localhost:1234)。GraphQL Playground 可以在：[localhost:4001](http://localhost:4001)

## 赞助商

<table data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6"><tbody data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6"><tr data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6"><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@ericerkz</td><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@robin-moser</td><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@Revorge</td><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@deexno</td><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@FKrauss</td><td data-immersive-translate-walked="b3c9fbac-a639-4f50-892e-9b53bd2befa6">@jupblb</td></tr></tbody></table>