[![Chat](https://img.shields.io/matrix/element-web:matrix.org?logo=matrix)](https://matrix.to/#/#element-web:matrix.org) ![Tests](https://github.com/vector-im/element-web/actions/workflows/tests.yaml/badge.svg) ![Static Analysis](https://github.com/vector-im/element-web/actions/workflows/static_analysis.yaml/badge.svg) [![Weblate](https://translate.element.io/widgets/element-web/-/element-web/svg-badge.svg)](https://translate.element.io/engage/element-web/) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=element-web&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=element-web) [![Coverage](https://sonarcloud.io/api/project_badges/measure?project=element-web&metric=coverage)](https://sonarcloud.io/summary/new_code?id=element-web) [![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=element-web&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=element-web) [![Bugs](https://sonarcloud.io/api/project_badges/measure?project=element-web&metric=bugs)](https://sonarcloud.io/summary/new_code?id=element-web)

# 元素

Element（以前称为 Vector 和 Riot）是一个使用 [Matrix React SDK](https://github.com/matrix-org/matrix-react-sdk) 构建的 Matrix 网络客户端。

# 支持的环境

Element 对不同环境提供了几个支持层级：

*   支持
    *   定义：问题被**积极处理** ，回归问题**阻止**发布
    *   桌面操作系统上最后两个主要版本的 Chrome、Firefox 和 Edge
    *   Safari 的最后两个版本
    *   桌面操作系统上官方 Element Desktop 应用的最新版本
    *   桌面操作系统指的是活跃受 OS 厂商支持并接收安全更新的 macOS、Windows 和 Linux 版本
*   实验性功能
    *   定义：接受的问题，回归问题不阻碍发布
    *   通过当前稳定版 Chrome 安装的 PWA 元素
    *   当前稳定版 Chrome、Firefox 和 Safari 在 Android、iOS 和 iPadOS 上的移动网页版本
*   不支持
    *   定义：仅影响不支持环境的问题将被 **关闭**
    *   其他所有内容

要访问 Element 在 Android 或 iOS 设备上，我们目前推荐使用原生应用 element-android 和 element-ios。

# 快速入门

测试 Element 最简单的方法就是使用托管版本 [https://app.element.io](https://app.element.io)。喜欢冒险的人可以将 `develop` 分支持续部署到 [https://develop.element.io](https://develop.element.io)。

要托管您自己的 Element 版本，最快的方法是使用 Element 的预构建发布版本：

1.  从 [https://github.com/vector-im/element-web/releases](https://github.com/vector-im/element-web/releases) 下载最新版本
2.  在您的 Web 服务器上解压 tarball
3.  将 `element-x.x.x` 目录移动到一个合适的名称
4.  在你的 Web 服务器上配置正确的缓存头（参见下方）
5.  配置应用程序：将 `config.sample.json` 复制到 `config.json` 并进行修改。详情请参见 [配置文档](https://github.com/vector-im/element-web/blob/develop/docs/config.md) 。
6.  在浏览器中输入 URL 并登录 Element！

发布使用 gpg 并遵循 OpenPGP 标准进行签名，您可以在此处验证签名：\[https://packages.riot.im/element-release-key.asc\](https://packages.riot.im/element-release-key.asc)

请注意，为了保证聊天的安全性，您需要通过 HTTPS 服务 Element。主要浏览器也不允许通过 HTTP 进行 VoIP 或视频聊天，因为 WebRTC 只能在 HTTPS 下使用。不过，当使用本地主机时，这被视为一个 [安全上下文](https://developer.mozilla.org/docs/Web/Security/Secure_Contexts) ，因此是允许的。

要将 Element 安装为桌面应用程序，请参阅下方的 [以桌面应用方式运行](#running-as-a-desktop-app) 。

# 重要安全注意事项

## 分离的域名

我们不建议从与你的 Matrix 服务器相同的域名运行 Element。原因是，如果有人导致 Element 加载并渲染来自 Matrix API 的恶意用户生成内容，而这些内容由于共享相同的域名，获得了对 Element（或其他应用）的信任访问权限，那么可能会出现跨站脚本（XSS）漏洞。

我们已经实施了一些粗略的缓解措施，以尽量保护自己不受这种情况的影响， 但首先这样做仍然不是良好的实践。更多详情请参阅 [https://github.com/vector-im/element-web/issues/1977](https://github.com/vector-im/element-web/issues/1977)。

## 配置最佳实践

除非有特殊需求，否则在托管 Element Web 时，您需要在 web 服务器配置中添加以下内容：

*   \`X-Frame-Options: SAMEORIGIN\` 头，以防止 Element Web 被嵌入框架，并保护免受点击劫持攻击。
*   将 \`frame-ancestors 'self'\` 指令添加到 \`Content-Security-Policy\` 头中，作为 \`X-Frame-Options\` 的现代替代方案（尽管两者都应被使用）。 由于并非所有浏览器都支持，因此包含在此处，请参阅 [this](https://cheatsheetseries.owasp.org/cheatsheets/Clickjacking_Defense_Cheat_Sheet.html#content-security-policy-frame-ancestors-examples))。
*   The `X-Content-Type-Options: nosniff` 头，用于禁用 MIME 类型推断。
*   The `X-XSS-Protection: 1; mode=block;` 头，用于在旧版浏览器中提供基本的 XSS 保护。

如果你使用的是 nginx，配置会类似于以下内容：

```
add_header X-Frame-Options SAMEORIGIN;
add_header X-Content-Type-Options nosniff;
add_header X-XSS-Protection "1; mode=block";
add_header Content-Security-Policy "frame-ancestors 'self'";
```

对于 Apache，配置如下：

```
Header set X-Frame-Options SAMEORIGIN
Header set X-Content-Type-Options nosniff
Header set X-XSS-Protection "1; mode=block"
Header set Content-Security-Policy "frame-ancestors 'self'"
```

注意：如果你已经在其他地方设置了 `Content-Security-Policy` 头，你应该修改它以包含 `frame-ancestors` 指令，而不是添加最后一行。

# 从源代码构建

Element 是一个基于现代 ES6 构建的模块化 web 应用，并使用 Node.js 构建系统。请确保安装了最新版本的 LTS Node.js。

使用 \``yarn`\` 而不是 \``npm`\` 是推荐的。如果你还没有安装，请参阅 Yarn 的 [安装指南](https://classic.yarnpkg.com/en/docs/install) 。

1.  安装或更新 \``node.js`\`，确保你的 \``node`\` 至少是当前推荐的 LTS 版本。
2.  如果还没有安装，请安装 \``yarn`\`。
3.  克隆仓库： `git clone https://github.com/vector-im/element-web.git`
4.  切换到 element-web 目录：\`\`\`cd element-web\`\`\`.
5.  安装依赖项：\`\`\`yarn install\`\`\`.
    *   如果你使用的是 \`\`\`develop\`\`\` 分支，建议设置一个完整的开发环境（参见下方的 [设置开发环境](#setting-up-a-dev-environment) ）。或者，你可以使用 [https://develop.element.io](https://develop.element.io) - \`\`\`develop\`\`\` 分支的持续集成发布版本。
6.  通过复制 \`\`\`config.sample.json\`\`\` 并重命名为 \`\`\`config.json\`\`\` 并进行修改来配置应用。详情请参见 [配置文档](https://github.com/vector-im/element-web/blob/develop/docs/config.md) 。
7.  运行 \``yarn dist`\` 来构建一个 tarball 用于部署。解压此文件会得到一个版本特定的目录，其中包含需要上传到你的 web 服务器的所有文件。

请注意，在 Windows 上不支持\``yarn dist`\`，因此 Windows 用户可以运行\``yarn build`\`，这将会把所有必要的文件构建到\``webapp`\`目录中。Element 的版本 不会在设置中出现，除非使用 dist 脚本。然后你可以挂载 将 \``webapp`\` 目录部署到你的 Web 服务器上，以实际提供该应用，该应用完全是静态内容。

# 以桌面应用方式运行

Element 也可以作为一个桌面应用运行，使用 Electron 包装。您可以在 [https://element.io/get-started](https://element.io/get-started) 下载预构建版本，或者如果您愿意，可以自行构建。

要自行构建，请按照 [https://github.com/vector-im/element-desktop](https://github.com/vector-im/element-desktop) 中的说明操作。

非常感谢 @aviraldg 在 Electron 集成方面的初始工作。

其他作为桌面应用运行的选项：

*   @asdf:matrix.org 指出，你可以使用 nativefier，它就能正常工作（tm）

```bash
yarn global add nativefier
nativefier https://app.element.io/
```

配置文档 [展示了如何覆盖桌面应用的默认设置](https://github.com/vector-im/element-web/blob/develop/docs/config.md#desktop-app-configuration) （如果需要的话）。

# 使用 Docker 运行

Docker 镜像可以用来作为 web 服务器运行 element-web。最简单的方法是使用预构建的镜像：

```bash
docker run -p 80:80 vectorim/element-web
```

要提供你自己的自定义 `config.json`，将一个卷映射到 `/app/config.json`。例如，如果你的自定义配置文件位于 `/etc/element-web/config.json`，那么你的 Docker 命令将是：

```bash
docker run -p 80:80 -v /etc/element-web/config.json:/app/config.json vectorim/element-web
```

自行构建镜像：

```bash
git clone https://github.com/vector-im/element-web.git element-web
cd element-web
git checkout master
docker build .
```

如果你正在构建自定义分支，或者想要使用 develop 分支，请检出相应的 element-web 分支，然后运行：

```bash
docker build -t \
    --build-arg USE_CUSTOM_SDKS=true \
    --build-arg REACT_SDK_REPO="https://github.com/matrix-org/matrix-react-sdk.git" \
    --build-arg REACT_SDK_BRANCH="develop" \
    --build-arg JS_SDK_REPO="https://github.com/matrix-org/matrix-js-sdk.git" \
    --build-arg JS_SDK_BRANCH="develop" \
    .
```

# 在 Kubernetes 中运行

提供的 element-web docker 镜像也可以在 Kubernetes 集群内部运行。更多详情请参见 [Kubernetes 示例](https://github.com/vector-im/element-web/blob/develop/docs/kubernetes.md) 。

# config.json

Element 支持多种设置来配置默认服务器、行为、主题等。更多详情请参见 [配置文档](https://github.com/vector-im/element-web/blob/develop/docs/config.md) 。

# 实验室功能

Element 的一些功能可能需要在设置中的“实验”部分启用标志才能启用。其中一些功能在 [labs.md](https://github.com/vector-im/element-web/blob/develop/docs/labs.md) 中有描述。

# 缓存要求

当你从自己的 web 服务器提供 Element 时，Element 需要以下 URL 不被缓存：

```
/config.*.json
/i18n
/home
/sites
/index.html
```

我们还建议通过配置 web 服务器，使其在页面加载时返回 `Cache-Control: no-cache` 对于 `/`，强制浏览器重新验证任何缓存的 Element 副本。这可以确保在部署后，浏览器会在下一次页面加载时获取 Element 的新版本。请注意，这已经在我们 Dockerfile 的 nginx 配置中为你配置好了。

# 开发

在尝试对 Element 进行开发之前，你**必须**阅读 [matrix-react-sdk 的开发指南](https://github.com/matrix-org/matrix-react-sdk#developer-guide) ，该指南还定义了 Element 的设计、架构和样式。

阅读[选择问题](https://github.com/vector-im/element-web/blob/develop/docs/choosing-an-issue.md)页面以获得一些指导 在开始工作之前，最好先确定从哪里开始。在着手开发一个新功能之前，最好确保 你的计划与我们对 Element 的愿景非常契合。请与团队进行交流。 在开始之前，请访问 [#element-dev:matrix.org](https://matrix.to/#/#element-dev:matrix.org)，以便我们可以确认这是否是我们愿意合并的内容。

你也应该熟悉一下《Here be Dragons》指南，了解代码库中存在的 tame 和不那么 tame 的 dragons（注意事项）。

Element 的设计理念是作为底层 matrix-react-sdk 的相对轻量级“皮肤”，在其上进行自定义。matrix-react-sdk 提供了构建基于 React 的 Matrix 通信应用所需的高、低级别 React 组件。

请注意，Element 设计为在不连接公共互联网的情况下也能正确运行。因此，请不要依赖由外部 CDN 或服务器托管的资源（如 JS 库、CSS、图片、字体），而是将所有依赖项打包到 Element 本身中。

CSS 热重载作为可选的开发功能可用。你可以在仓库根目录的 .env 文件中定义一个 CSS\_HOT\_RELOAD 环境变量来启用它。请参阅 .env.example 文件以获取文档和示例。

# 设置开发环境

Element 的许多功能实际上在 `matrix-react-sdk` 中实现的，并 \`matrix-js-sdk\` 模块。可以设置这些模块以便于跟踪 git 中的 \`develop\` 分支，并且可以在本地进行修改而无需每次手动重新构建。

首先克隆并构建 `matrix-js-sdk`：

```bash
git clone https://github.com/matrix-org/matrix-js-sdk.git
pushd matrix-js-sdk
yarn link
yarn install
popd
```

然后像 \``matrix-react-sdk`\` 一样：

```bash
git clone https://github.com/matrix-org/matrix-react-sdk.git
pushd matrix-react-sdk
yarn link
yarn link matrix-js-sdk
yarn install
popd
```

克隆仓库并切换到 `element-web` 目录：

```bash
git clone https://github.com/vector-im/element-web.git
cd element-web
```

通过复制 `config.sample.json` 为 `config.json` 并对其进行修改来配置应用。详情请参阅 [配置文档](https://github.com/vector-im/element-web/blob/develop/docs/config.md) 。

最后，构建并启动 Element 本身：

```bash
yarn link matrix-js-sdk
yarn link matrix-react-sdk
yarn install
yarn start
```

等待几秒钟以完成初始构建；你应该会看到类似的内容：

```
[element-js] <s> [webpack.Progress] 100%
[element-js]
[element-js] ℹ ｢wdm｣:    1840 modules
[element-js] ℹ ｢wdm｣: Compiled successfully.
```

请记住，该命令不会终止，因为它会运行 Web 服务器并在源文件更改时重建文件。此开发服务器还禁用了缓存，因此请勿在生产环境中使用它。

在浏览器中打开 [http://127.0.0.1:8080/](http://127.0.0.1:8080/) 查看您新构建的 Element。

**注意** ：构建脚本默认在 Linux 上使用 inotify 监控目录 以检测更改。如果 inotify 限制过低，您的构建可能会静默失败或失败。 为了避免这些问题，我们建议设置最多监视器数量为至少 128M，并且实例数量约为 512。

你可能对问题 [#15750](https://github.com/vector-im/element-web/issues/15750) 感兴趣和 \[1#15774\](#1) 以获取更多信息。

要设置新的 inotify 监视器和实例限制，请执行：

```
sudo sysctl fs.inotify.max_user_watches=131072
sudo sysctl fs.inotify.max_user_instances=512
sudo sysctl -p
```

如果你愿意，可以通过执行以下命令使新的限制永久生效：

```
echo fs.inotify.max_user_watches=131072 | sudo tee -a /etc/sysctl.conf
echo fs.inotify.max_user_instances=512 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

* * *

当你对 `matrix-react-sdk` 或 `matrix-js-sdk` 进行修改时，webpack 应该会自动检测并构建这些更改。

如果在执行这些步骤时遇到`文件表溢出`错误，你可能使用的是 mac 系统，其最大打开文件数的限制非常低。可以运行 `ulimit -Sn 1024` 并重新尝试。在每次打开新的终端窗口进行构建 Element 之前，都需要执行此操作。

## 运行测试

在 \``tests`\` 目录中有若干应用级测试；这些测试设计为与 Jest 和 JSDOM 一起运行。要运行这些测试，请参阅相关文档。

```
yarn test
```

### 端到端测试

有关如何运行端到端测试，请参阅 [matrix-react-sdk](https://github.com/matrix-org/matrix-react-sdk/#end-to-end-tests)。

# 翻译

要添加新的翻译，请前往 [翻译文档](https://github.com/vector-im/element-web/blob/develop/docs/translating.md) 。

对于开发人员指南，请参阅[翻译开发文档](https://github.com/vector-im/element-web/blob/develop/docs/translating-dev.md) 。

[![translationsstatus](https://translate.element.io/widgets/element-web/-/multi-auto.svg)](https://translate.element.io/engage/element-web/?utm_source=widget)

# 处理问题

问题由社区成员和 Web 应用团队按照[处理流程](https://github.com/vector-im/element-meta/wiki/Triage-process)进行分类处理。

我们使用[问题标签](https://github.com/vector-im/element-meta/wiki/Issue-labelling)来整理所有收到的问题。