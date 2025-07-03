 ![AdGuard Home](https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/doc/adguard_home_lightmode.svg)

### 隐私保护中心，守护你和你的设备

免费开源，强大的网络范围广告和追踪者阻断 DNS 服务器。

[AdGuard.com](https://adguard.com/) | [Wiki](https://github.com/AdguardTeam/AdGuardHome/wiki) | [Reddit](https://reddit.com/r/Adguard) | [Twitter](https://twitter.com/AdGuard) | [Telegram](https://t.me/adguard_en)
 [![Code Coverage](https://img.shields.io/codecov/c/github/AdguardTeam/AdGuardHome/master.svg)](https://codecov.io/github/AdguardTeam/AdGuardHome?branch=master)[![Go Report Card](https://goreportcard.com/badge/github.com/AdguardTeam/AdGuardHome) ](https://goreportcard.com/report/AdguardTeam/AdGuardHome)[![Docker Pulls](https://img.shields.io/docker/pulls/adguard/adguardhome.svg?maxAge=604800)](https://hub.docker.com/r/adguard/adguardhome)
 [![Latest release](https://img.shields.io/github/release/AdguardTeam/AdGuardHome/all.svg)](https://github.com/AdguardTeam/AdGuardHome/releases)[![adguard-home](https://snapcraft.io/adguard-home/badge.svg)](https://snapcraft.io/adguard-home)

![](https://cdn.adtidy.org/public/Adguard/Common/adguard_home.gif)

* * *

AdGuard Home 是一种网络范围内的软件，用于屏蔽广告和跟踪。设置完成后，它会覆盖你家中的所有设备，无需任何客户端软件。

它作为 DNS 服务器运行，将跟踪域名重定向到“黑洞”，从而防止您的设备连接到这些服务器。它基于我们用于公共 AdGuard DNS 服务器的软件，并且两者共享大量代码。

*   [开始使用](#getting-started)
    *   [自动安装（Unix）](#automated-install-linux-and-mac)
    *   [替代方法](#alternative-methods)
    *   [指南](#guides)
    *   [API](#api)
*   [将 AdGuard Home 与其他解决方案进行比较](#comparison)
    *   [这与公共 AdGuard DNS 服务器有何不同？](#comparison-adguard-dns)
    *   [AdGuard Home 与 Pi-Hole 相比如何](#comparison-pi-hole)
    *   [AdGuard Home 与传统广告拦截器相比如何](#comparison-adblock)
    *   [已知限制](#comparison-limitations)
*   [如何从源代码构建](#how-to-build)
    *   [先决条件](#prerequisites)
    *   [构建](#building)
*   [贡献](#contributing)
    *   [测试不稳定版本](#test-unstable-versions)
    *   [报告问题](#reporting-issues)
    *   [翻译帮助](#translate)
    *   [其他](#help-other)
*   [使用 AdGuard Home 的项目](#uses)
*   [致谢](#acknowledgments)
*   [隐私](#privacy)

## [开始使用](#getting-started)

### [自动化安装（Unix）](#automated-install-linux-and-mac)

使用 \``curl`\` 安装，请运行以下命令：

```sh
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
```

使用 \``wget`\` 安装，请运行以下命令：

```sh
wget --no-verbose -O - https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
```

使用 \``fetch`\` 安装，请运行以下命令：

```sh
fetch -o - https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
```

脚本还接受一些选项：

*   `-c <channel>` 使用指定的渠道;
*   `-r` 重新安装 AdGuard Home;
*   `-u` 卸载 AdGuard Home;
*   `-v` 显示详细输出。

注意，选项 `-r` 和 `-u` 互斥。

### [替代方法](#alternative-methods)

#### [手动安装](#manual-installation)

请阅读我们 Wiki 上的 **[入门指南](https://github.com/AdguardTeam/AdGuardHome/wiki/Getting-Started)** 文章，了解如何手动安装 AdGuard Home，以及如何配置设备使用它。

#### [Docker](#docker)

您可以在 [Docker Hub](https://hub.docker.com/r/adguard/adguardhome) 使用我们的官方 Docker 镜像。

#### [Snap Store](#snap-store)

如果您正在运行 **Linux**，可以通过 [Snap Store](https://snapcraft.io/adguard-home) 安全且方便地安装 AdGuard Home。

### [指南](#guides)

请参阅我们的 [Wiki](https://github.com/AdguardTeam/AdGuardHome/wiki)。

### [API](#api)

如果您想集成 AdGuard Home，可以使用我们的 [REST API](https://github.com/AdguardTeam/AdGuardHome/tree/master/openapi)。或者，您可以使用这个 [python 客户端](https://pypi.org/project/adguardhome/) ，它用于构建 [AdGuard Home Hass.io 插件](https://www.home-assistant.io/integrations/adguard/) 。

## [与其他解决方案相比，AdGuard Home 有何不同？](#comparison)

### [这与公共 AdGuard DNS 服务器有何不同？](#comparison-adguard-dns)

运行自己的 AdGuard Home 服务器可以让你做到远不止使用公共 DNS 服务器所能做的。这是一个完全不同的层次。你自己试试看：

*   选择服务器具体拦截和允许的内容。
    
*   监控网络活动。
    
*   添加您自己的自定义过滤规则。
    
*   **最重要的是，这是您自己的服务器，也只有您能掌控。**
    

### [AdGuard Home 与 Pi-Hole 有何不同？](#comparison-pi-hole)

到目前为止，AdGuard Home 与 Pi-Hole 很多方面都有相似之处。两者都使用所谓的“DNS 漏洞利用”方法来屏蔽广告和追踪器，并且都允许用户自定义屏蔽内容。

我们不会止步于此。DNS 漏洞利用可以作为一个不错的起点，但这仅仅是个开始。

AdGuard Home 提供了许多开箱即用的功能，无需安装和配置额外的软件。我们希望它简单到即使是普通用户也能在最少的努力下完成设置。

\*\*免责声明：\*\* 列出的一些功能可以通过安装额外的软件或通过使用 SSH 终端手动重新配置 Pi-Hole 组成的一部分工具来添加。然而，在我们看来，这不能合法地算作 Pi-Hole 的功能。

| 功能 | AdGuard Home | Pi-Hole |
| --- | --- | --- |
| 拦截广告和跟踪器 | ✅ | ✅ |
| 自定义屏蔽列表 | ✅ | ✅ |
| 内置 DHCP 服务器 | ✅ | ✅ |
| Admin 界面使用 HTTPS | ✅ | 是的，但你需要手动配置 lighttpd |
| 加密的 DNS 上游服务器（DNS-over-HTTPS、DNS-over-TLS、DNSCrypt） | ✅ | ❌（需要额外软件） |
| 跨平台 | ✅ | ❌（不原生支持，仅可通过 Docker 实现） |
| 运行作为 HTTPS-over-DNS 或 TLS-over-DNS 服务器 | ✅ | ❌ 需要额外软件 |
| 阻止钓鱼和恶意软件域名 | ✅ | ❌ 需要非默认黑名单 |
| 家长控制（屏蔽成人网站） | ✅ | ❌ |
| 强制使用安全搜索 | ✅ | ❌ |
| 每客户端（设备）配置 | ✅ | ✅ |
| 访问设置（选择谁可以使用 AGH DNS） | ✅ | ❌ |
| 以非 root 权限运行 | ✅ | ❌ |

### [AdGuard Home 与传统广告拦截器有何不同](#comparison-adblock)

视情况而定。

DNS 黑洞能够拦截大量广告，但缺乏传统广告拦截器的灵活性和功能。你可以通过阅读 [这篇文章](https://adguard.com/blog/adguard-vs-adaway-dns66.html) 来了解这两种方法之间的差异，该文章将 AdGuard for Android（一种传统广告拦截器）与主机级别广告拦截器（在功能上几乎与基于 DNS 的拦截器相同）进行了比较。这种级别的保护对一些用户来说已经足够。

此外，使用基于 DNS 的阻塞器还可以帮助在智能电视、智能音箱或其他类型的物联网设备（在这些设备上无法安装传统广告拦截器）上阻止广告、跟踪和分析请求。

### [已知限制](#comparison-limitations)

以下是一些 DNS 级别阻塞器无法阻止的示例：

*   YouTube、Twitch 的广告；
    
*   Facebook、Twitter、Instagram 的赞助帖子。
    

本质上，任何与内容共享域的广告都无法被 DNS 级别的阻塞器拦截。

未来是否有处理这种情况的可能性？DNS 从来都不足以做到这一点。我们唯一的办法是使用内容阻塞代理，就像我们在独立的 AdGuard 应用程序中所做的那样。未来我们将为 AdGuard Home 带来这一功能支持。不幸的是，即使在这种情况下，仍然会有无法拦截或需要相当复杂配置的情况。

## [如何从源代码构建](#how-to-build)

### [前提条件](#prerequisites)

运行 \`make init\` 来准备开发环境。

你需要以下内容来构建 AdGuard Home：

*   Go v1.19 或更新版本；
*   Node.js v10.16.2 或更高版本；
*   npm v6.14 或更高版本；
*   yarn v1.22.5 或更高版本。

### [构建](#building)

在终端中执行以下命令：

```sh
git clone https://github.com/AdguardTeam/AdGuardHome
cd AdGuardHome
make
```

\*\*注意：\*\* 非标准的 `-j` 标志目前不被支持，因此使用 `make -j 4` 或设置 `MAKEFLAGS` 包含例如 `-j 4` 可能会破坏构建过程。如果你的 `MAKEFLAGS` 已经设置为这个值，并且你不想更改它，可以通过运行 `make -j 1` 来覆盖它。

查看 `Makefile` 了解其他命令。

#### [为不同的平台进行构建](#building-cross)

你可以为 Go 支持的任何操作系统/架构构建 AdGuard Home。为了做到这一点，在运行时将 `GOOS` 和 `GOARCH` 环境变量指定为宏。 使用 \`make\` 命令。

例如：

```sh
env GOOS='linux' GOARCH='arm64' make
```

或者：

```sh
make GOOS='linux' GOARCH='arm64'
```

#### [准备发布](#preparing-releases)

你需要 [`snapcraft`](https://snapcraft.io/) 来准备发布构建。安装完成后，运行以下命令：

```sh
make build-release CHANNEL='...' VERSION='...'
```

请参阅 [`build-release` 目标文档](https://github.com/AdguardTeam/AdGuardHome/tree/master/scripts#build-releasesh-build-a-release-for-all-platforms) 。

#### [Docker 镜像](#docker-image)

运行 \``make build-docker`\` 以在本地构建 Docker 镜像（我们发布到 DockerHub 的镜像）。请注意，我们使用 [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/) 来构建官方镜像。

在使用这些构建之前，您可能需要做一些准备工作：

*   （仅限 Linux）安装 Qemu：
    
    ```sh
    docker run --rm --privileged multiarch/qemu-user-static --reset -p yes --credential yes
    ```
    
*   准备构建器：
    
    ```sh
    docker buildx create --name buildx-builder --driver docker-container --use
    ```
    

参见 [`build-docker` 目标文档](https://github.com/AdguardTeam/AdGuardHome/tree/master/scripts#build-dockersh-build-a-multi-architecture-docker-image) 。

#### [前端调试](#debugging-the-frontend)

当您需要调试前端而无需每次重新编译生产版本，例如检查您的标签在表单中会如何显示时，可以运行前端构建开发环境。

1.  在另一个终端中运行：
    
    ```sh
    ( cd ./client/ && env NODE_ENV='development' npm run watch )
    ```
    
2.  运行 `AdGuardHome` 二进制文件并添加 `--local-frontend` 标志，这将指示 AdGuard Home 忽略内置前端文件并使用 `./build/` 目录中的文件。
    
3.  现在，您在 `./client/` 目录中所做的任何更改都应该重新编译并在 Web UI 中可用。请确保禁用浏览器缓存，以确保您实际获取到重新编译的版本。
    

## [贡献](#contributing)

欢迎您 fork 本仓库，进行更改并 [提交拉取请求](https://github.com/AdguardTeam/AdGuardHome/pulls) 。不过请确保遵循我们的 [代码规范](https://github.com/AdguardTeam/CodeGuidelines/) 。

请注意，我们不期望人们同时对程序的 UI 部分和后端部分进行贡献。理想情况下，后端部分（如配置、API 和功能本身）应首先实现。UI 部分可以在不同的 pull request 中由不同的人稍后实现。

### [测试不稳定版本](#test-unstable-versions)

您可以使用两种更新渠道：

*   `beta`: AdGuard Home 的 beta 版本。较为稳定的版本，通常每两周或更频繁地发布一次。
    
*   `edge`: AdGuard Home 开发分支的最新版本。此渠道每天都会推送新更新。
    

有三种方式可以安装不稳定版本：

1.  [Snap Store](https://snapcraft.io/adguard-home): 查找 `beta` 和 `edge` 渠道。
    
2.  [Docker Hub](https://hub.docker.com/r/adguard/adguardhome): 查找 `beta` 和 `edge` 标签。
    
3.  独立构建。使用自动化安装脚本，或在维基上查找可用的构建 [on the Wiki](https://github.com/AdguardTeam/AdGuardHome/wiki/Platforms)。
    
    安装测试版本的脚本：
    
    ```sh
    curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -c beta
    ```
    
    安装边缘版本的脚本：
    
    ```sh
    curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -c edge
    ```
    

### [报告问题](#reporting-issues)

如果遇到任何问题或有建议，请访问 [此页面](https://github.com/AdguardTeam/AdGuardHome/issues) 并点击“新建问题”按钮。

### [帮助进行翻译](#translate)

如果您想帮助翻译 AdGuard Home，请了解我们在 [知识库](https://kb.adguard.com/en/general/adguard-translations) 中关于翻译 AdGuard 产品的更多信息。您可以在 [CrowdIn 上的 AdGuardHome 项目](https://crowdin.com/project/adguard-applications/en#/adguard-home) 中贡献自己的力量。

### [其他](#help-other)

另一种贡献方式是查找标记为 `help wanted` 的问题，询问该问题是否可以参与，并提交修复漏洞或实现新功能的 PR。

## [使用 AdGuard Home 的项目](#uses)

*   [AdGuard Home Remote](https://apps.apple.com/app/apple-store/id1543143740)：由 [Joost](https://rocketscience-it.nl/) 开发的 iOS 应用。
    
*   [Python 库](https://github.com/frenck/python-adguardhome)由 [@frenck](https://github.com/frenck)
    
*   [Home Assistant 插件](https://github.com/hassio-addons/addon-adguard-home) 由 [@frenck](https://github.com/frenck) 提供。
    
*   [OpenWrt LUCI 应用程序](https://github.com/kongfl888/luci-app-adguardhome)由 [@kongfl888](https://github.com/kongfl888) (原作者为 [@rufengsuixing](https://github.com/rufengsuixing)).
    
*   [AdGuard Home 的 Prometheus 导出器](https://github.com/ebrianne/adguard-exporter)由 [@ebrianne](https://github.com/ebrianne) 编写.
    
*   [基于终端的 AdGuard Home 实例实时流量监控和统计](https://github.com/Lissy93/AdGuardian-Term)由 [@Lissy93](https://github.com/Lissy93)
    
*   [AdGuard Home 在 GLInet 路由器上](https://forum.gl-inet.com/t/adguardhome-on-gl-routers/10664)由 [Gl-Inet](https://gl-inet.com/).
    
*   [Cloudron 应用](https://git.cloudron.io/cloudron/adguard-home-app)由 [@gramakri](https://github.com/gramakri)。
    
*   [Asuswrt-Merlin-AdGuardHome-Installer](https://github.com/jumpsmm7/Asuswrt-Merlin-AdGuardHome-Installer) 由 [@jumpsmm7](https://github.com/jumpsmm7) 即 [@SomeWhereOverTheRainBow](https://www.snbforums.com/members/somewhereovertherainbow.64179/) 提供。
    
*   [Node.js 库](https://github.com/Andrea055/AdguardHomeAPI)由 [@Andrea055](https://github.com/Andrea055/) 开发。
    

## [致谢](#acknowledgments)

如果没有以下人员的帮助，这款软件是不可能实现的：

*   [Go](https://golang.org/dl/) 及其库：
    *   [gcache](https://github.com/bluele/gcache)
    *   [miekg 的 dns](https://github.com/miekg/dns)
    *   [go-yaml](https://github.com/go-yaml/yaml)
    *   [service](https://godoc.org/github.com/kardianos/service)
    *   [dnsproxy](https://github.com/AdguardTeam/dnsproxy)
    *   [urlfilter](https://github.com/AdguardTeam/urlfilter)
*   [Node.js](https://nodejs.org/) 和其库：
    *   和许多更多的 Node.js 包。
    *   [React.js](https://reactjs.org)
    *   [Tabler](https://github.com/tabler/tabler)
*   [whotracks.me 数据](https://github.com/cliqz-oss/whotracks.me)

你可能之前见过这里提到了 [CoreDNS](https://coredns.io)，但我们已经停止在 AdGuard Home 中使用它。

要查看所有使用的 Node.js 包的完整列表，请查看 [`client/package.json`](https://github.com/AdguardTeam/AdGuardHome/blob/master/client/package.json) 文件。

## [隐私](#privacy)

我们的主要理念是，数据应该是你自己的，因此 AdGuard Home 不会收集任何使用统计数据，也不会使用任何网络服务，除非你进行相应的配置。有关 AdGuard Home 可能发送的所有详细信息，请参阅*完整的隐私政策* ，其中包含了所有理论上可能被发送的内容。