# Nextcloud 服务器 ☁

[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/nextcloud/server/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/nextcloud/server/?branch=master) [![codecov](https://codecov.io/gh/nextcloud/server/branch/master/graph/badge.svg)](https://codecov.io/gh/nextcloud/server) [![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/209/badge)](https://bestpractices.coreinfrastructure.org/projects/209) [![Design](https://contribute.design/api/shield/nextcloud/server)](https://contribute.design/nextcloud/server)

**一个安全的数据家园。**

![](https://raw.githubusercontent.com/nextcloud/screenshots/master/nextcloud-hub-files-25-preview.png)

## 为什么这么棒？🤩

*   📁 **访问您的数据** 您可以将文件、联系人、日历等存储在您选择的服务器上。
*   🔄 **同步您的数据** 您可以在各种设备之间同步文件、联系人、日历以及其他内容。
*   🙌 **分享您的数据** …通过给予他人访问您希望他们查看的内容或进行协作的权限。
*   🚀 **支持数百款应用程序** …例如 [日历](https://github.com/nextcloud/calendar) 、 [联系人](https://github.com/nextcloud/contacts) 、 [邮件](https://github.com/nextcloud/mail) 、 [视频聊天](https://github.com/nextcloud/spreed) 以及您在我们的 [应用商店](https://apps.nextcloud.com) 中可以发现的所有其他应用
*   🔒 **安全性** 通过我们的加密机制、[HackerOne 奖励计划](https://hackerone.com/nextcloud) 和双因素认证。

您想了解更多关于如何使用 Nextcloud 在家和组织中访问、共享和保护文件、日历、联系人、通信及其他内容的方法吗？\[了解更多所有功能\]

## 获取您的 Nextcloud 🚚

*   ☑️ \[通过我们的网站或应用程序直接在我们的提供商中注册\]
*   🖥 \[自行在您的硬件上安装服务器\] 或使用我们的即用型 \[设备\] 安装
*   📦 购买一款预装了 Nextcloud 的 [awesome **device**](https://nextcloud.com/devices/)
*   🏢 找一家为你或你的公司提供 Nextcloud 服务的 [service **provider**](https://nextcloud.com/providers/)

企业用户？公共部门用户或教育用户？你可能想了解一下由 Nextcloud GmbH 提供的 [**Nextcloud Enterprise**](https://nextcloud.com/enterprise/)。

## Get in touch 💬

*   [论坛](https://help.nextcloud.com)
*   [Facebook](https://www.facebook.com/nextclouders)
*   [Twitter](https://twitter.com/Nextclouders)
*   [Mastodon](https://mastodon.xyz/@nextcloud)

你也可以[获得 Nextcloud 的支持](https://nextcloud.com/support) ！

## 加入我们的团队 👪

有很多方式可以贡献，开发只是其中一种！了解更多[如何参与](https://nextcloud.com/contribute/) ，包括作为译者、设计师、测试员，帮助他人，以及其他更多内容！😍

### 开发环境设置 👩‍💻

1.  🚀 [设置本地开发环境](https://docs.nextcloud.com/server/latest/developer_manual/getting_started/devenv.html)
2.  🐛 [选择一个合适的初学者问题](https://github.com/nextcloud/server/labels/good%20first%20issue)
3.  👩‍🔧 创建一个分支并进行修改。记得在提交时使用 @0 进行签名
4.  ⬆ 创建一个 [合并请求](https://opensource.guide/how-to-contribute/#opening-a-pull-request) ，并 `@mention` 提及问题中的审核人员
5.  👍 在审查过程中解决出现的问题
6.  🎉 等待合并！

第三方组件作为 git 子模块处理，因此需要先初始化。除了常规的 git 检出操作外，还需要执行 \``git submodule update --init`\` 或类似命令，详情请参见 Git 文档。

默认包含在常规发布版本中的多个应用程序，如 首次运行向导 或 Activity，在 `master` 中缺失，需要手动安装，通过克隆它们到 `apps` 子文件夹中。

否则，git 检出可以像处理发布存档一样，通过使用 `stable*` 分支来处理。注意它们永远不应该在生产系统上使用。

### 前端代码开发 🏗

#### 构建 Vue 组件和脚本

我们越来越多地在前端使用 Vue.js，从设置模块开始。要在代码更改时构建代码，请在根文件夹中使用以下终端命令：

```bash
# install dependencies
make dev-setup

# build for development
make build-js

# build for development and watch edits
make watch-js

# build for production with minification
make build-js-production
```

#### 构建样式

样式用 SCSS 编写，并编译成 css。

```bash
# install dependencies
make dev-setup

# compile style sheets
npm run sass

# compile style sheets and watch edits
npm run sass:watch
```

#### 提交更改

**在进行更改时，也要提交编译后的文件！**

我们在 Files 和 Settings 中的一些地方仍然使用 Handlebars 模板。我们将逐步用 Vue.js 替换这些模板，但在那之前，你需要单独编译它们。

如果你还没有安装 Handlebars，可以使用这个终端命令进行安装：

```bash
sudo npm install -g handlebars
```

然后在本地 Nextcloud 开发安装的根文件夹中，每次修改了 `.handlebars` 文件后，都需要在终端中运行以下命令进行编译：

```bash
./build/compile-handlebars-templates.sh
```

在提交 JS 变更之前，请确保也要进行生产构建：

```bash
make build-js-production
```

然后添加编译文件进行提交。

为了节省时间，仅重新构建特定的应用程序，请使用以下命令并用应用程序名称替换模块名称：

```bash
MODULE=user_status make build-js-production
```

请注意，如果您之前使用了 \`make build-js\` 或 \`make watch-js\`，会发现很多文件被标记为已更改，因此可能需要先清理工作区。

### 处理后端代码 🏗

在更改后端 PHP 代码时，通常在提交之前不需要额外的步骤。

然而，如果创建了新文件，您需要运行以下命令以更新自动加载器文件：

```bash
build/autoloaderchecker.sh
```

之后，请确保将自动加载器文件的更改也包含在您的提交中。

### 我们使用的工具 🛠

*   [👀 BrowserStack](https://browserstack.com) 用于跨浏览器测试
*   [🌊 WAVE](https://wave.webaim.org/extension/) 用于无障碍测试
*   [🚨 Lighthouse](https://developers.google.com/web/tools/lighthouse/) 用于测试性能、无障碍及其他更多内容

#### GitHub 上的帮助机器人 :robot:

*   在拉取请求中评论 `/update-3rdparty` 以更新第三方子模块。它将更新为与拉取请求目标同名的第三方分支的最新提交。

## 贡献指南 📜

从 2016 年 6 月 16 日起，此仓库的所有贡献均视为根据 AGPLv3 或任何后续版本进行许可。

Nextcloud 不需要 Contributor License Agreement (CLA)。版权归属于所有个体贡献者。因此，我们建议如果某文件被大幅修改，每个贡献者在文件头部添加以下行：

```
@copyright Copyright (c) <year>, <your name> (<your email address>)
```

请阅读[行为准则](https://nextcloud.com/community/code-of-conduct/) 。该文件为 Nextcloud 参与者提供了一些指导，以确保大家能在积极和鼓舞人心的氛围中有效合作，并解释了我们如何共同努力相互支持和加强。

请审阅[贡献指南](.github/CONTRIBUTING.md) 。

更多关于如何贡献的信息：[https://nextcloud.com/contribute/](https://nextcloud.com/contribute/)