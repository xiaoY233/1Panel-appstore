[![GitHub license](https://img.shields.io/github/license/Awesome-Technologies/synapse-admin)](https://github.com/Awesome-Technologies/synapse-admin/blob/master/LICENSE) [![Build Status](https://api.travis-ci.com/Awesome-Technologies/synapse-admin.svg?branch=master)](https://app.travis-ci.com/github/Awesome-Technologies/synapse-admin) [![build-test](https://github.com/Awesome-Technologies/synapse-admin/actions/workflows/build-test.yml/badge.svg)](https://github.com/Awesome-Technologies/synapse-admin/actions/workflows/build-test.yml) [![gh-pages](https://github.com/Awesome-Technologies/synapse-admin/actions/workflows/edge_ghpage.yml/badge.svg)](https://awesome-technologies.github.io/synapse-admin/) [![docker-release](https://github.com/Awesome-Technologies/synapse-admin/actions/workflows/docker-release.yml/badge.svg)](https://hub.docker.com/r/awesometechnologies/synapse-admin) [![github-release](https://github.com/Awesome-Technologies/synapse-admin/actions/workflows/github-release.yml/badge.svg)](https://github.com/Awesome-Technologies/synapse-admin/releases)

# Synapse 管理 UI

本项目使用 [react-admin](https://marmelab.com/react-admin/) 构建。

## 使用方法

### 支持的 Synapse

为了所有功能正常工作，至少需要 [Synapse](https://github.com/matrix-org/synapse) v1.52.0！

您可以通过请求 `/_synapse/admin/v1/server_version` 获取服务器版本。另请参阅 [Synapse 版本 API](https://matrix-org.github.io/synapse/develop/admin_api/version_api.html)。

在 synapse-admin 登录页面输入 URL 后，服务器版本将显示在输入字段下方。

### 先决条件

您需要访问以下端点：

*   `/_matrix`
*   `/_synapse/admin`

另见 [synapse 管理端点](https://matrix-org.github.io/synapse/develop/reverse_proxy.html#synapse-administration-endpoints)

### 无需安装即可使用

您可以直接通过 [GitHub Pages](https://awesome-technologies.github.io/synapse-admin/) 使用 Synapse Admin 的当前版本，无需自行安装。

**注意：** 如果您想使用此部署，请确保浏览器可以访问管理端点（`/_synapse/admin`）。 **记住：您无需将这些端点暴露给互联网，只需暴露给您的网络。** 如果您想进行自己的部署，请遵循下面的[分步安装指南](#step-by-step-install) 。

### 分步安装

您有三个选择：

1.  [下载 tar 包并使用任何 Web 服务器提供服务](#steps-for-1)
2.  [从 GitHub 下载源代码并使用 nodejs 运行](#steps-for-2)
3.  [运行 Docker 容器](#steps-for-3)

#### 步骤1）的说明

*   确保您已安装一个可以提供静态文件的 Web 服务器（任何 Web 服务器如 nginx 或 apache 均可）
*   配置您的 Web 服务器上的 synapse admin 虚拟主机
*   从最新版本下载.tar.gz 文件：[https://github.com/Awesome-Technologies/synapse-admin/releases/latest](https://github.com/Awesome-Technologies/synapse-admin/releases/latest)
*   解压.tar.gz 文件
*   将 `synapse-admin-x.x.x` 移动或创建符号链接到您的虚拟主机根目录
*   在浏览器中打开虚拟主机的 URL

#### 步骤2）的步骤：

*   确保您已安装以下软件：git、yarn、nodejs
*   下载源代码： `git clone https://github.com/Awesome-Technologies/synapse-admin.git`
*   切换到下载的目录：`cd synapse-admin`
*   下载依赖项：`yarn install`
*   启动 Web 服务器：`yarn start`

您可以修复 homeserver，这样用户就不能再自行定义它了。您可以在启动时定义它（例如 `REACT_APP_SERVER=https://yourmatrixserver.example.com yarn start` ）或在 [.env](.env) 文件中编辑它。也请参阅 [文档](https://create-react-app.dev/docs/adding-custom-environment-variables/) 。

#### 步骤 3）：

*   从公共 Docker 仓库运行 Docker 容器： `docker run -p 8080:80 awesometechnologies/synapse-admin` 或者使用 [docker-compose.yml](docker-compose.yml)：`docker-compose up -d`
    
    > 注意：如果您在非 amd64 架构（例如树莓派）上构建，请确保为 Node 定义最大 RAM。否则构建将失败。
    
    ```yml
    version: "3"
    
    services:
      synapse-admin:
        container_name: synapse-admin
        hostname: synapse-admin
        build:
          context: https://github.com/Awesome-Technologies/synapse-admin.git
          # args:
          #   - NODE_OPTIONS="--max_old_space_size=1024"
          #   # see #266, PUBLIC_URL must be without surrounding quotation marks
          #   - PUBLIC_URL=/synapse-admin
          #   - REACT_APP_SERVER="https://matrix.example.com"
        ports:
          - "8080:80"
        restart: unless-stopped
    ```
    
*   浏览到 [http://localhost:8080](http://localhost:8080)
    

## 屏幕截图

![Screenshots](./screenshots.jpg)

## 开发

*   使用 `yarn test` 运行所有样式、代码风格和单元测试
*   使用 `yarn fix` 修复代码风格