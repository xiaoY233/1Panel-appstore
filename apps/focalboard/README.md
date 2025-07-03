# 使用说明

默认以`SQLite`数据库模式运行，

需要以`postgres`数据库运行的，需要修改目录下的`postgres-config.json`里的数据库信息

且修改`docker-compose.yml`文件里的配置映射。

# 原始相关

# :warning: 通告：请阅读 :warning:

Focalboard 个人服务器和个人桌面版将从 2023 年 4 月 30 日起完全转为社区支持。此 Focalboard 仓库将成为个人版仓库，并将无限期保持开放。然而，我们不会添加任何新功能，并且仅在 2023 年 4 月 30 日之前解决 Sev-1 级别的错误。

# Focalboard

![CI Status](https://github.com/mattermost/focalboard/actions/workflows/ci.yml/badge.svg) ![CodeQL](https://github.com/mattermost/focalboard/actions/workflows/codeql-analysis.yml/badge.svg) ![Dev Release](https://github.com/mattermost/focalboard/actions/workflows/dev-release.yml/badge.svg) ![Prod Release](https://github.com/mattermost/focalboard/actions/workflows/prod-release.yml/badge.svg) [![Translation status](https://translate.mattermost.com/widgets/focalboard/-/svg-badge.svg)](https://translate.mattermost.com/engage/focalboard/)

喜欢你所看到的吗？ :eyes: 给我们一个 GitHub Star！ :star:

![Focalboard](https://github.com/mattermost/focalboard/raw/main/website/site/static/img/hero.jpg)

Focalboard 是一个开源的多语言自托管项目管理工具，是 Trello、Notion 和 Asana 的替代品。

它有助于定义、组织、跟踪和管理个人和团队之间的工作。Focalboard 有三个版本：

*   **[Mattermost Boards](https://mattermost.com/boards/)**：与 Mattermost 平台集成，以便您的团队进行计划和协作。
    
*   **[个人桌面](https://www.focalboard.com/docs/personal-edition/desktop/)** ：一个独立的一用户 [macOS](https://apps.apple.com/app/apple-store/id1556908618?pt=2114704&ct=website&mt=8)、[Windows](https://www.microsoft.com/store/apps/9NLN2T0SX9VF?cid=website) 或 [Linux](https://www.focalboard.com/download/personal-edition/desktop/#linux-desktop) 桌面应用程序，用于您自己的待办事项和个人项目。
    
*   **[个人服务器](https://www.focalboard.com/download/personal-edition/ubuntu/)** ：一款独立的多用户服务器，适用于开发和个人使用。
    

## 尝试 Focalboard

### Mattermost Boards

**Mattermost Boards** 将项目管理工具与消息传递和协作结合在一起，适用于所有规模的组织。要访问和使用 **Mattermost Boards**，请安装或升级到 Mattermost v6.0 或更高版本作为[自托管服务器](https://docs.mattermost.com/guides/deployment.html?utm_source=github&utm_campaign=focalboard) 。登录 Mattermost 后，选择左上角的菜单，然后选择 **Boards**。

### 个人桌面（Windows、Mac 或 Linux 桌面）

*   **Windows**：从 [Windows 应用商店](https://www.microsoft.com/store/productId/9NLN2T0SX9VF)下载或从[最新版本](https://github.com/mattermost/focalboard/releases)下载 `focalboard-win.zip`，解压后运行 `Focalboard.exe`。
*   **Mac**：从 [Mac 应用商店](https://apps.apple.com/us/app/focalboard-insiders/id1556908618?mt=12)下载。
*   **Linux 桌面** ：从[最新版本](https://github.com/mattermost/focalboard/releases)下载 `focalboard-linux.tar.gz`，解压后打开 `focalboard-app`。

### 个人服务器

**Ubuntu**：您可以通过遵循[我们最新的安装指南](https://www.focalboard.com/download/personal-edition/ubuntu/)下载并运行编译好的 Focalboard **个人服务器** 。

### API 文档

Boards API 文档可以在 [https://htmlpreview.github.io/?https://github.com/mattermost/focalboard/blob/main/server/swagger/docs/html/index.html](https://htmlpreview.github.io/?https://github.com/mattermost/focalboard/blob/main/server/swagger/docs/html/index.html) 找到。

## 为 Focalboard 做出贡献

对于任何有兴趣成为 Focalboard 仓库官方维护者的人来说，请通过我们的 [Focalboard 社区频道](https://community.mattermost.com/core/channels/focalboard)联系我们。如果没有维护者，而你仍然有兴趣为 Focalboard 个人版添加自己的改进，我们鼓励你进行分支并维护该仓库。

### 入门指南

我们的[开发者指南](https://developers.mattermost.com/contribute/focalboard/personal-server-setup-guide)详细说明了如何为**个人服务器**设置你的开发环境。它还提供了更多关于为我们的开源社区做出贡献的信息。

将 [mattermost-server](https://github.com/mattermost/mattermost-server) 克隆到同级目录。

在 focalboard 目录下创建一个 `.env` 文件，其中包含：

```
EXCLUDE_ENTERPRISE="1"
```

构建服务器：

```
make prebuild
make
```

运行服务器：

```
 ./bin/focalboard-server
```

然后，在浏览器中导航到 [`http://localhost:8000`](http://localhost:8000) 以访问您的 Focalboard 服务器。端口号配置在 `config.json` 中。

一旦服务器运行，您可以在另一个终端窗口中通过 `make webapp` 重新构建仅网页应用。重新加载浏览器以查看更改。

### 构建和运行独立桌面应用

您可以构建包含服务器的独立应用，以便在本地针对 SQLite 运行：

*   **Windows**：
    *   *需要 Windows 10，[Windows 10 SDK](https://developer.microsoft.com/en-us/windows/downloads/sdk-archive/) 10.0.19041.0，以及.NET 4.8 开发者包*
    *   打开一个 `git-bash` 提示符。
    *   运行 `make prebuild`
    *   上述预构建步骤仅在您对项目进行更改或想要安装 npm 依赖项等时需要运行。
    *   一旦预构建完成，您可以重复以下步骤来构建应用程序并查看更改。
    *   运行 `make win-wpf-app`
    *   Run `cd win-wpf/msix && focalboard.exe`
*   **Mac**：
    *   *需要 macOS 11.3+ 和 Xcode 13.2.1+*
    *   运行 `make prebuild`
    *   上述预构建步骤仅在您对项目进行更改或想要安装 npm 依赖项等时需要运行。
    *   预构建完成后，您可以重复以下步骤来构建应用程序并查看更改。
    *   运行 `make mac-app`
    *   运行 `open mac/dist/Focalboard.app`
*   **Linux**:
    *   *在 Ubuntu 18.04 上测试过*
    *   安装 `webgtk` 依赖
        *   Run `sudo apt-get install libgtk-3-dev`
        *   Run `sudo apt-get install libwebkit2gtk-4.0-dev`
    *   运行 `make prebuild`
    *   上述预构建步骤仅在您对项目进行更改或想要安装 npm 依赖项等时需要运行。
    *   预构建完成后，您可以重复以下步骤来构建应用程序并查看更改。
    *   运行 `make linux-app`
    *   解压 `linux/dist/focalboard-linux.tar.gz` 到您选择的目录
    *   从您选择的目录运行 `focalboard-app`
*   **Docker**:
    *   要从官方镜像本地运行它：
        *   `docker run -it -p 80:8000 mattermost/focalboard`
    *   为构建适用于您当前架构：
        *   `docker build -f docker/Dockerfile .`
    *   为构建适用于自定义架构（实验性）：
        *   `docker build -f docker/Dockerfile --platform linux/arm64 .`

交叉编译目前尚未完全支持，请在该平台上进行构建。请参考 GitHub Actions 工作流程（`build-mac.yml`、`build-win.yml`、`build-ubuntu.yml`）以获取每个平台的详细步骤列表。

### 单元测试

在提交检查之前，运行 `make ci`，这与 `.gitlab-ci.yml` 工作流程类似，包括：

*   **服务器单元测试** ：`make server-test`
*   **Web 应用 ESLint**：`cd webapp; npm run check`
*   **Web 应用单元测试** ：`cd webapp; npm run test`
*   **Web 应用 UI 测试** : `cd webapp; npm run cypress:ci`

### 翻译中

帮助翻译 Focalboard！该应用已翻译成多种语言。我们欢迎更正和新语言翻译！您可以在 [Weblate](https://translate.mattermost.com/engage/focalboard/) 添加新语言或改进现有翻译。

### 保持信息更新

*   **变更** ：查看最新的更新请参阅[变更日志](CHANGELOG.md)
*   **GitHub 讨论区** ：加入[开发者讨论](https://github.com/mattermost/focalboard/discussions)板块
*   **错误报告** ： [提交错误报告](https://github.com/mattermost/focalboard/issues/new?assignees=&labels=bug&template=bug_report.md&title=)
*   **聊天** ：加入 [Focalboard 社区频道](https://community.mattermost.com/core/channels/focalboard)