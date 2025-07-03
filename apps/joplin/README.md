# 使用说明

*   默认账户密码

```
username：admin@localhost
password：admin
```

# 原始相关

[![Donate using PayPal](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/badges/Donate-PayPal-green.svg)](https://www.paypal.com/donate/?business=E8JMYD2LQ8MMA&no_recurring=0&item_name=I+rely+on+donations+to+maintain+and+improve+the+Joplin+open+source+project.+Thank+you+for+your+help+-+it+makes+a+difference%21&currency_code=EUR) [![Sponsor on GitHub](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/badges/GitHub-Badge.svg)](https://github.com/sponsors/laurent22/) [![Become a patron](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/badges/Patreon-Badge.svg)](https://www.patreon.com/joplin) [![Donate using IBAN](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/badges/Donate-IBAN.svg)](https://joplinapp.org/donate/#donations)

![](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/LinuxIcons/256x256.png)Joplin 是一个免费的开源笔记和待办事项应用程序，可以处理大量组织在笔记本中的笔记。笔记可以搜索、复制、标记和修改，既可以从中应用程序直接操作，也可以从您自己的文本编辑器操作。笔记以 [Markdown 格式](#markdown) 存储。

Evernote 导出的笔记可以导入 Joplin，包括格式化的内容（转换为 Markdown）、资源（图片、附件等）和完整的元数据（地理位置、更新时间、创建时间等）。纯 Markdown 文件也可以导入。

笔记可以通过 [端到端加密](#encryption) 安全地与 Nextcloud、Dropbox、OneDrive 和 [Joplin Cloud](https://joplinapp.org/plans/) 等各种云服务同步。

所有平台上都支持全文搜索，以便快速找到您需要的信息。该应用程序可以通过插件和主题进行自定义，您也可以轻松创建自己的自定义设置。

该应用程序适用于 Windows、Linux、macOS、Android 和 iOS。此外，Firefox 和 Chrome 浏览器还提供了名为的网页和屏幕截图保存工具。

![](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/home-top-img.png)

# 安装

有三种类型的应用程序：适用于桌面（Windows、macOS 和 Linux）、适用于移动设备（Android 和 iOS）以及适用于终端（Windows、macOS、Linux 和 FreeBSD）。所有应用程序具有相似的用户界面，并且可以相互同步。

## 桌面应用程序

| 操作系统 | 下载 |
| --- | --- |
| Windows（32 位和 64 位） |  |
| macOS |  |
| Linux |  |

在 Windows 上，你也可以使用 [便携版](https://objects.joplinusercontent.com/v2.11.11/JoplinPortable.exe?source=JoplinWebsite&type=New) 。便携应用程序允许将软件安装在便携设备（如 USB 驱动器）上。只需将 JoplinPortable.exe 文件复制到 USB 驱动器上的任意目录；应用程序随后会在可执行文件旁边创建一个名为 "JoplinProfile" 的目录。

在 Linux 上，推荐使用以下安装脚本，因为它还会处理桌面图标：

```
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
```

安装和更新脚本支持以下标志（以本文撰写时第 50 行左右为准）。

## 移动应用程序

| 操作系统 | 下载 | Alt. Download |
| --- | --- | --- |
| Android |  | 或下载 APK 文件 |
| iOS |  | - |

## 终端应用

| 操作系统 | 方法 |
| --- | --- |
| macOS、Linux 或 Windows（通过 WSL） | 重要： 首先，请安装 Node 12+。NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplinsudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin默认情况下，应用程序二进制文件将安装在 ~/.joplin-bin 目录下。如果需要，您可以更改此目录。或者，如果您按照 此处 （选项 2）描述的 npm 权限设置，则只需运行 npm -g install joplin 即可。 |

要启动它，请输入 `joplin`。

如需使用信息，请参阅完整的 [Joplin 终端应用程序文档](https://joplinapp.org/terminal/) 。

## 网页剪辑器

Web 剪辑器是浏览器扩展程序，允许您从浏览器中保存网页和屏幕截图。如需安装和使用方法，请参阅 [Web 剪辑器帮助页面](https://github.com/laurent22/joplin/blob/dev/readme/clipper.md) 。

## 非官方替代发行版

存在一些非官方的 Joplin 替代发行版。如果你不想或不能使用 appimages 或其他任何官方支持的版本，那么你可能希望考虑这些发行版。

然而，这些发行版带有警告，即它们没有官方支持，因此某些问题可能无法得到主要项目的支持。相反，支持请求、错误报告和一般建议需要提交给这些发行版的维护者。

这些发行版的社区维护列表可以在这里找到： [非官方 Joplin 发行版](https://discourse.joplinapp.org/t/unofficial-alternative-joplin-distributions/23703)

# 赞助商

[![](https://joplinapp.org/images/sponsors/SeireiNetwork.png "Serei Network")](https://seirei.ne.jp) [![](https://joplinapp.org/images/sponsors/HostingDe.png "Hosting.de")](https://www.hosting.de/nextcloud/?mtm_campaign=managed-nextcloud&mtm_kwd=joplinapp&mtm_source=joplinapp-webseite&mtm_medium=banner) [![](https://joplinapp.org/images/sponsors/ResidenceGreece.jpg "Greece Golden Visa")](https://residence-greece.com/) [![](https://joplinapp.org/images/sponsors/Grundstueckspreise.png "SP Software GmbH")](https://grundstueckspreise.info/) [![](https://joplinapp.org/images/sponsors/TranioOverseasProperty.jpg "Property for sale in Spain")](https://tranio.com/spain/) [![](https://joplinapp.org/images/sponsors/CitricSheep.png "Citric Sheep")](https://citricsheep.com)

* * *

|  |  |  |  |
| --- | --- | --- | --- |
| avanderberg | chr15m | CyberXZT | dbrandonjohnson |
| dchecks | fats | 四步进器 | Hegghammer |
| iamwillbar | jknowles | KentBrockman | kianenigma |
| konishi-t | marcdw1289 | matmoly | maxtruxa |
| mcejp | saarantras | sif | taskcruncher |
| 比例 |  |  |  |

# 目录

*   应用程序
    
    *   [桌面应用程序](https://github.com/laurent22/joplin/blob/dev/readme/desktop.md)
    *   [移动应用程序](https://github.com/laurent22/joplin/blob/dev/readme/mobile.md)
    *   [终端应用](https://github.com/laurent22/joplin/blob/dev/readme/terminal.md)
    *   [网页剪辑器](https://github.com/laurent22/joplin/blob/dev/readme/clipper.md)
*   支持
    
    *   [Joplin 论坛](https://discourse.joplinapp.org)
    *   [Markdown Guide](https://github.com/laurent22/joplin/blob/dev/readme/markdown.md)
    *   [如何启用端到端加密](https://github.com/laurent22/joplin/blob/dev/readme/e2ee.md)
    *   [什么是冲突？](https://github.com/laurent22/joplin/blob/dev/readme/conflict.md)
    *   [如何启用调试模式](https://github.com/laurent22/joplin/blob/dev/readme/debugging.md)
    *   [Rich Text 编辑器的限制](https://github.com/laurent22/joplin/blob/dev/readme/rich_text_editor.md)
    *   [外部链接](https://github.com/laurent22/joplin/blob/dev/readme/external_links.md)
    *   [常见问题](https://github.com/laurent22/joplin/blob/dev/readme/faq.md)
*   Joplin 云
    
    *   [共享笔记本](https://github.com/laurent22/joplin/blob/dev/readme/share_notebook.md)
    *   [发布便签](https://github.com/laurent22/joplin/blob/dev/readme/publish_note.md)
    *   [邮件转笔记](https://github.com/laurent22/joplin/blob/dev/readme/email_to_note.md)
*   Joplin API - 快速上手
    
    *   [Joplin API 概览](https://github.com/laurent22/joplin/blob/dev/readme/api/overview.md)
    *   [插件开发](https://github.com/laurent22/joplin/blob/dev/readme/api/get_started/plugins.md)
    *   [插件教程](https://github.com/laurent22/joplin/blob/dev/readme/api/tutorials/toc_plugin.md)
*   Joplin API - 参考资料
    
    *   [插件 API](https://joplinapp.org/api/references/plugin_api/classes/joplin.html)
    *   [数据 API](https://github.com/laurent22/joplin/blob/dev/readme/api/references/rest_api.md)
    *   [插件清单](https://github.com/laurent22/joplin/blob/dev/readme/api/references/plugin_manifest.md)
    *   [插件加载规则](https://github.com/laurent22/joplin/blob/dev/readme/api/references/plugin_loading_rules.md)
    *   [插件主题化](https://github.com/laurent22/joplin/blob/dev/readme/api/references/plugin_theming.md)
*   开发
    
    *   [如何构建应用](https://github.com/laurent22/joplin/blob/dev/BUILD.md)
    *   [编写技术规范](https://github.com/laurent22/joplin/blob/dev/readme/technical_spec.md)
    *   [桌面应用程序样式化](https://github.com/laurent22/joplin/blob/dev/readme/spec/desktop_styling.md)
    *   [注释历史规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/history.md)
    *   [同步规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/sync.md)
    *   [同步锁规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/sync_lock.md)
    *   [同步滚动规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/sync_scroll.md)
    *   [整体架构规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/architecture.md)
    *   [插件架构规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/plugins.md)
    *   [搜索排序规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/search_sorting.md)
    *   [端到端加密：技术规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/e2ee.md)
    *   [E2EE：工作流](https://github.com/laurent22/joplin/blob/dev/readme/spec/e2ee/workflow.md)
    *   [服务器: 文件 URL 格式](https://github.com/laurent22/joplin/blob/dev/readme/spec/server_file_url_format.md)
    *   [服务器: 差异同步](https://github.com/laurent22/joplin/blob/dev/readme/spec/server_delta_sync.md)
    *   [服务器: 共享](https://github.com/laurent22/joplin/blob/dev/readme/spec/server_sharing.md)
    *   [只读项](https://github.com/laurent22/joplin/blob/dev/readme/spec/read_only.md)
*   Google Summer of Code 2022
    
    *   [Google 夏令营 2022](https://github.com/laurent22/joplin/blob/dev/readme/gsoc2022/index.md)
    *   [如何提交 GSoC 拉取请求](https://github.com/laurent22/joplin/blob/dev/readme/gsoc2022/pull_request_guidelines.md)
    *   [项目想法](https://github.com/laurent22/joplin/blob/dev/readme/gsoc2022/ideas.md)
*   关于
    
    *   [桌面应用变更日志](https://github.com/laurent22/joplin/blob/dev/readme/changelog.md)
    *   [更新日志（Android）](https://github.com/laurent22/joplin/blob/dev/readme/changelog_android.md)
    *   [iOS 变更日志](https://github.com/laurent22/joplin/blob/dev/readme/changelog_ios.md)
    *   [命令行应用变更日志](https://github.com/laurent22/joplin/blob/dev/readme/changelog_cli.md)
    *   [更新日志（服务器）](https://github.com/laurent22/joplin/blob/dev/readme/changelog_server.md)
    *   [设计原则](https://github.com/laurent22/joplin/blob/dev/readme/principles.md)
    *   [数据统计](https://github.com/laurent22/joplin/blob/dev/readme/stats.md)
    *   [品牌指南](https://joplinapp.org/brand)
    *   [捐赠](https://github.com/laurent22/joplin/blob/dev/readme/donate.md)

# 功能

*   桌面、移动和终端应用程序。
*   [Web Clipper](https://github.com/laurent22/joplin/blob/dev/readme/clipper.md) 适用于 Firefox 和 Chrome。
*   端到端加密（E2EE）。
*   笔记历史（修订）。
*   与 Nextcloud、Dropbox、WebDAV 和 OneDrive 等多种服务同步。
*   离线优先，因此即使没有互联网连接，设备上的所有数据也始终可用。
*   导入 Enex 文件（Evernote 导出格式）和 Markdown 文件。
*   导出 JEX 文件（Joplin 导出格式）和原始文件。
*   支持笔记、待办事项、标签和笔记本。
*   可根据多个标准对笔记进行排序——标题、更新时间等。
*   支持提醒（通知）功能，适用于移动和桌面应用程序。
*   支持 Markdown 格式的笔记，在桌面和移动应用程序中会以图片和格式呈现。支持额外功能，如数学公式和复选框。
*   支持选择 Markdown 和富文本（WYSIWYG）编辑器。
*   文件附件支持 - 图片直接显示，其他文件链接可打开，并在相应应用程序中打开。
*   PDF、视频和音频文件的内联显示。
*   Goto Anything 功能。
*   搜索功能。
*   地理位置支持。
*   支持多种语言。
*   外部编辑器支持 - 在 Joplin 中点击一下即可打开笔记到您喜欢的外部编辑器。
*   通过插件和数据 API 扩展功能。
*   支持自定义 CSS，可用于自定义渲染的 Markdown 和整体用户界面。
*   可自定义布局，允许切换、移动和调整各种元素的大小。
*   键盘快捷键可编辑，并允许绑定大多数 Joplin 命令，具有导出/导入功能。
*   多配置文件支持。

# 导入

## 从 Evernote 导入

Joplin 是为替代 Evernote 设计的，因此可以导入完整的 Evernote 笔记本，以及笔记、标签、资源（附加文件）和笔记元数据（如作者、地理位置等）通过 ENEX 文件。从数据角度来看，只有两项可能会略有不同：

*   识别数据 - 特别是扫描（或拍摄）的文档，Evernote 会与它们关联识别数据。这是 Evernote 在文档中识别出的文本。当笔记导入 Joplin 时，这些数据不会被保留。然而，如果将来在搜索工具或其他 Joplin 部分支持这项功能，由于实际的图片仍然可用，应该可以重新生成这些识别数据。
    
*   颜色、字体大小和字体类型 - Evernote 中的文本存储为 HTML 格式，在导入过程中会转换为 Markdown。对于主要由纯文本或基本格式（加粗、斜体、项目符号、链接等）组成的笔记，这种转换是无损的，一旦重新渲染为 HTML 格式，笔记应该与原始格式非常相似。表格也会被导入并转换为 Markdown 表格。对于非常复杂的笔记，可能会丢失一些格式数据，特别是颜色、字体大小和字体类型不会被导入。然而，文本本身总是会完整地被导入，无论其格式如何。如果需要保留这些额外的数据，Joplin 也允许导入 ENEX 文件为 HTML 格式。
    

要导入 Evernote 数据，请首先按照此处 [描述](https://help.evernote.com/hc/en-us/articles/209005557-How-to-back-up-export-and-restore-import-notes-and-notebooks) 将 Evernote 笔记本导出为 ENEX 文件。然后按照以下步骤操作：

在 **桌面应用程序** 中，打开“文件”>“导入”>“ENEX”，并选择您的文件。笔记将被导入到一个新的独立笔记本中。如果需要，可以将笔记移动到不同的笔记本，或重命名笔记本等。

在终端应用中，在命令行模式下输入 `import /path/to/file.enex`。这将把笔记导入一个以文件名命名的新笔记本。

## 从 Markdown 文件导入

Joplin 可以从普通的 Markdown 文件导入笔记。你可以导入整个 Markdown 文件目录，也可以导入单独的文件。

在**桌面应用程序**中：

*   **文件导入** : 请转到文件 > 导入 > MD - Markdown (文件)，然后选择要导入的 Markdown 文件。该文件将被导入到当前选中的笔记本中。
*   **目录导入** : 请转到文件 > 导入 > MD - Markdown (目录)，然后选择要导入的目录的顶层目录。导入的目录结构将在 Joplin 中的笔记本 > 子笔记本 > 笔记结构中得以保留。

在 **终端应用** 中，在 [命令行模式](https://github.com/laurent22/joplin/blob/dev/readme/terminal.md#command-line-mode) 下，输入 `import --format md /path/to/file.md` 或 `import --format md /path/to/directory/` 。

## 从其他应用导入

一般来说，将任何应用程序中的笔记导入 Joplin 的方法是将笔记转换为 ENEX 文件（Evernote 格式），然后使用上述方法导入这些 ENEX 文件。大多数笔记应用程序都支持 ENEX 文件，因此操作应该相对简单。对于特定应用程序的帮助，请参见以下内容：

*   Standard Notes：请参见 [此教程](https://programadorwebvalencia.com/migrate-notes-from-standard-notes-to-joplin/)
*   Tomboy Notes：将笔记导出为 ENEX 文件（如 [此处所述](https://askubuntu.com/questions/243691/how-can-i-export-my-tomboy-notes-into-evernote/608551) ），然后将这些 ENEX 文件导入 Joplin。
*   OneNote：首先 [将 OneNote 中的笔记导入 Evernote](https://discussion.evernote.com/topic/107736-is-there-a-way-to-import-from-onenote-into-evernote-on-the-mac/)。然后从 Evernote 导出 ENEX 文件并将其导入 Joplin。
*   NixNote：与 Evernote 同步后，导出 ENEX 文件并导入 Joplin。更多信息请参见[该帖子](https://discourse.joplinapp.org/t/import-from-nixnote/183/3) 。

# 导出

Joplin 可以导出为 JEX 格式（Joplin 导出文件），这是一种 tar 文件，可以包含多个笔记、笔记本等。这是一种无损格式，所有笔记以及元数据（如地理位置、更新时间、标签等）都会被保留。这种格式便于备份，并且可以重新导入到 Joplin 中。还提供了一种“原始”格式。这种格式与 JEX 格式相同，只是数据保存在一个目录中，每个项目由单个文件表示。Joplin 还可以导出为其他格式，包括 HTML 和 PDF，可以针对单个笔记、笔记本或所有内容进行导出。

# 同步

Joplin 的一个目标是避免绑定到任何特定的公司或服务，无论是 Evernote、Google 还是 Microsoft。因此，同步设计时没有依赖于任何特定的服务。同步过程大多在抽象层次上进行，访问外部服务（如 Nextcloud 或 Dropbox）是通过轻量级驱动程序完成的。通过创建简单的提供类似文件系统接口的驱动程序，可以轻松支持新的服务，即提供读取、写入、删除和列出项的能力。还可以轻松地从一个服务切换到另一个服务，甚至可以同时同步到多个服务。在同步过程中，每个笔记、笔记本、标签以及项目之间的关系都以纯文本文件的形式传输，这意味着数据也可以转移到其他应用程序，可以轻松备份、检查等。

目前，与 Nextcloud、WebDAV、Dropbox、OneDrive 或本地文件系统同步是可能的。要启用同步，请按照以下说明操作。之后，应用程序将在运行时在后台自动同步，或者您可以点击“同步”以手动开始同步。Joplin 会在本地应用程序做出任何内容更改后自动后台同步。

如果已安装了**终端客户端** ，还可以通过在终端中输入 `joplin sync` 来在用户界面之外进行同步。这可以用于设置一个 cron 脚本，在固定的时间间隔内进行同步。例如，这会每 30 分钟执行一次：

`*/30 * * * * /path/to/joplin sync`

## Nextcloud 同步

![](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/nextcloud-logo-background.png)[Nextcloud](https://nextcloud.com/) 是一个自托管的私有云解决方案。它可以存储文档、图片和视频，也可以存储日历、密码以及其他无数种事物，并可以将其同步到你的笔记本电脑或手机上。由于你可以托管自己的 Nextcloud 服务器，因此你既拥有设备上的数据，也拥有用于同步的基础设施。因此，它非常适合 Joplin。该平台还得到了良好的支持，并且拥有强大的社区，所以它很可能会长期存在——由于它是开源的，所以不会被关闭，可以在服务器上一直运行下去，只要有人愿意。

在 **桌面应用程序** 或 **移动应用程序** 中，进入 [配置界面](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md) ，选择 Nextcloud 作为同步目标。然后输入 WebDAV 地址（在页面左下角的设置中可以找到，通常为 `https://example.com/nextcloud/remote.php/webdav/Joplin` ），请确保在 Nextcloud 中创建一个名为“Joplin”的目录，然后设置用户名和密码。如果不起作用，请参阅 [此处的说明](https://github.com/laurent22/joplin/issues/61#issuecomment-373282608) 以获取更多详细信息。

在终端应用中，您需要设置 `sync.target` 配置变量以及所有 `sync.5.path`、`sync.5.username` 和 `sync.5.password` 配置变量，分别对应 Nextcloud WebDAV 的 URL、您的用户名和密码。这可以通过命令行模式使用以下方式完成：

```
:config sync.5.path https://example.com/nextcloud/remote.php/webdav/Joplin
:config sync.5.username YOUR_USERNAME
:config sync.5.password YOUR_PASSWORD
:config sync.target 5
```

如果同步不工作，请查看应用配置文件目录中的日志，通常是因为 URL 或密码配置错误。日志会指出具体的问题。

## WebDAV 同步

选择“WebDAV”同步目标，并遵循上述 Nextcloud 的相同步骤（对于终端应用，您需要选择同步目标 6 而不是 5）。

与 Joplin 兼容的 WebDAV 兼容服务：

*   [Apache WebDAV 模块](https://httpd.apache.org/docs/current/mod/mod_dav.html)
*   [DriveHQ](https://www.drivehq.com)
*   [Fastmail](https://www.fastmail.com/)
*   [HiDrive](https://www.strato.fr/stockage-en-ligne/) 来自 Strato。 [安装帮助](https://github.com/laurent22/joplin/issues/309)
*   [Nginx WebDAV 模块](https://nginx.org/en/docs/http/ngx_http_dav_module.html)
*   [Nextcloud](https://nextcloud.com/)
*   [OwnCloud](https://owncloud.org/)
*   [Seafile](https://www.seafile.com/)
*   [Stack](https://www.transip.nl/stack/)
*   [Synology WebDAV 服务器](https://www.synology.com/en-us/dsm/packages/WebDAVServer)
*   [WebDAV Nav](https://www.schimera.com/products/webdav-nav-server/)，一个 macOS 服务器。
*   [Zimbra](https://www.zimbra.com/)

## Dropbox 同步

在与 Dropbox 同步时，Joplin 会在 Dropbox 中创建一个子目录，在 ``/Apps/Joplin`` 中读写笔记和笔记本。应用程序不会访问此目录之外的任何内容。

在 **桌面应用** 或 **移动应用** 中，选择“Dropbox”作为同步目标（默认已选中）。然后，要启动同步过程，请在侧边栏中点击“同步”按钮并按照提示操作。

在终端应用程序中，要启动同步过程，请输入 `:sync`。您将被要求点击一个链接以授权该应用程序。

## OneDrive 同步

在与 OneDrive 同步时，Joplin 会在 OneDrive 中创建一个子目录，路径为 /Apps/Joplin，并在此目录中读取和写入笔记和笔记本。该应用程序不会访问此目录之外的任何内容。

在桌面应用程序或移动应用程序中，选择“OneDrive”作为同步目标，在 [配置界面](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md) 中。然后，要启动同步过程，请点击侧边栏中的“同步”按钮并按照指示操作。

在**终端应用**中，要启动同步过程，请输入 `:sync`。系统会要求您点击链接进行授权（只需输入您的 Microsoft 凭证 - 您无需注册 OneDrive 即可）。

## S3 同步

从 Joplin 2.x.x 版本开始，Joplin 支持多个 S3 提供商。我们将提供一些需要根据您选择的提供商进行配置的选项。我们已经测试了 UpCloud、AWS 和 Linode，其他提供商也应该可以正常工作。

在**桌面应用**或**移动应用**中，选择“S3（测试版）”作为同步目标，在[配置界面](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md)中进行设置。

*   **S3 Bucket:** 桶的名称，例如 `joplin-bucket`
*   **S3 URL:** 完整的 URL；对于 AWS，应为 `https://s3.<regionName>.amazonaws.com/`
*   **S3 Access Key & S3 Secret Key:** 用户的编程访问密钥。要在 AWS 上创建新的密钥和密钥，请访问 [IAM 安全凭证](https://console.aws.amazon.com/iam/home#/security_credentials) 。对于其他提供商，请遵循其文档。
*   **S3 Region:** 一些提供商要求您提供桶所在的区域。这通常以“eu-west1”或类似的形式表示，具体取决于您的区域。对于不需要指定区域的提供商，您可以留空。
*   **强制路径风格** : 此设置使 Joplin 能够使用较旧的 S3 路径风格与 S3 提供商进行通信。根据您的提供商，您可能需要尝试开启和关闭此设置。

在为 Joplin 创建新的存储桶时，请禁用**存储桶版本控制** ，启用**阻止所有公共访问** ，并启用**默认加密** ，加密方式为 `Amazon S3 密钥（SSE-S3）`。一些提供商不提供这些选项，可能会导致同步问题。请尝试并反馈，以便我们更新文档。

要在 AWS S3 Web 控制台中添加**存储桶策略** ，请导航到**权限**选项卡。暂时禁用**阻止所有公共访问**以编辑存储桶策略，类似于以下内容：

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                  "s3:ListBucket",
                  "s3:GetBucketLocation",
                  "s3:GetObject",
                  "s3:DeleteObject",
                  "s3:DeleteObjectVersion",
                  "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::joplin-bucket",
                "arn:aws:s3:::joplin-bucket/*"
            ]
        }
    ]
}
```

### 已测试提供商的配置设置

所有提供商都需要一个存储桶、访问密钥和密钥。

如果提供了配置并在“检查配置”中收到“success!”，那么您的 S3 同步应该可以正常工作。如果没有收到成功消息，您可能需要调整设置，或者保存设置、重启应用并尝试同步。这可能会揭示更清晰的错误信息，帮助您找出问题所在。

### AWS

*   URL: `https://s3.<region>.amazonaws.com/` (填入您的区域，完整的端点地址列表可以在这里找到 [这里](https://docs.aws.amazon.com/general/latest/gr/s3.html) )
*   区域: 必填
*   强制路径样式: 未选中

### Linode

*   URL: `https://<region>.linodeobjects.com` （区域在 Linode 提供的 URL 中；此 URL 也与移除桶名后的 Linode 提供的 URL 相同）
*   区域: 你想输入的内容不能为空
*   强制路径样式: 未选中

### UpCloud

*   URL: `https://<account>.<region>.upcloudobjects.com` (他们会提供给你多个 URL，符合这个模式的应该有效。)
*   区域: 必填
*   强制路径样式: 未选中

# 加密

Joplin 在所有应用程序中支持端到端加密（E2EE）。E2EE 是一种系统，只有笔记、笔记本、标签或资源的所有者才能阅读它们。这可以防止潜在的窃听者——包括电信提供商、互联网提供商，甚至 Joplin 的开发者——无法访问数据。请参阅 [端到端加密教程](https://github.com/laurent22/joplin/blob/dev/readme/e2ee.md) 以获取更多关于此功能及其启用方法的信息。

对于更详细的描述，主要适用于开发或审查所使用的方法，请参阅 [加密规范](https://github.com/laurent22/joplin/blob/dev/readme/spec/e2ee.md) 。

# 历史记录

Joplin 应用程序会定期自动保存笔记的先前版本。这些版本会在设备之间同步，并且可以从桌面应用程序中查看。要查看这些版本，请点击笔记上的“信息”按钮，然后点击“此笔记的先前版本”。从这个界面，您可以查看笔记的先前版本并恢复其中任何一个版本。

此功能可以在“配置屏幕”的“笔记历史”部分禁用，并且还可以更改笔记历史保存的时间长度。

更多信息请参见“笔记历史”页面。

# 外部文本编辑器

Joplin 笔记可以使用您选择的外部编辑器打开和编辑。这可以是一个简单的文本编辑器，如 Notepad++ 或 Sublime Text，也可以是一个实际的 Markdown 编辑器，如 Typora。在这种情况下，图片也会在编辑器中显示。要使用外部编辑器打开笔记，请点击工具栏中的图标或按 Ctrl+E（或 Cmd+E）。默认的文本编辑器将用于打开笔记。如果需要，您也可以在“文本编辑器命令”下直接指定编辑器。

# 附件

任何类型的文件都可以附加到一个笔记中。在 Markdown 中，这些文件的链接表示为一个简单的附件 ID，点击这个链接将在默认应用程序中打开文件。对于音频、视频和 PDF 文件，这些文件将在笔记中嵌入显示，因此可以在 Joplin 中查看或播放。

在 **桌面应用程序** 中，可以通过点击编辑器中的“附加文件”图标或通过拖放来附加文件。如果你更愿意创建一个指向本地文件的链接，可以在执行拖放操作时按住 ALT 键。你也可以通过 Ctrl+V 将图片直接粘贴到编辑器中。

未附加到任何笔记中的资源将根据 [笔记历史](#note-history) 设置自动删除。

**重要：** 目前，大小超过 10 MB 的资源在移动设备上不被支持。在同步时它们会导致应用程序崩溃，因此目前建议不要附加此类资源。这个问题正在被解决。

## 下载附件

在同步过程中下载附件的方式可以在[配置屏幕](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md)下的“附件下载行为”中进行自定义。默认选项（“始终”）是始终下载所有附件，这样即使在设备离线时数据也是可用的。还可以选择手动下载（选项“手动”），通过点击触发，或者自动下载（选项“自动”），在这种情况下，只有在打开笔记时才会下载附件。这些选项有助于节省磁盘空间和网络带宽，特别是在移动设备上。

# 通知

在桌面和移动应用程序中，可以将任何待办事项与警报关联。该警报将在指定时间通过显示通知来触发。通知的显示方式取决于操作系统，因为每个操作系统处理这种方式的方式不同。请参阅以下桌面应用程序的要求：

*   **Windows**: >= 8. 确保在 Windows 中启用了行动中心。Windows 任务栏气球 < 8. 作为备选方案使用 Growl。Growl 优先于 Windows 气球。
*   macOS: >= 10.8 或 Growl（如果更早）。
*   Linux: `notify-send` 工具，通过软件包 `notify-osd`、`libnotify-bin` 或 `libnotify-tools` 提供。GNOME 默认包含此工具，但如果使用 KDE Plasma，请安装 `libnotify-tools`。

请参阅 [报告者选择的文档和流程图](https://github.com/mikaelbr/node-notifier/blob/master/DECISION_FLOW.md)

在移动设备上，警报将使用内置的通知系统显示。

如果通知不工作，请[提交问题](https://github.com/laurent22/joplin/issues) 。

# 子笔记本

子笔记本允许将多个笔记本组织成笔记本树。例如，可以将所有与工作、家庭或特定项目相关的笔记本归类到一个父笔记本下。

![](https://raw.githubusercontent.com/laurent22/joplin/dev/Assets/WebsiteAssets/images/SubNotebooks.png)

*   在**桌面应用程序**中，要创建子笔记本，请将其拖放到另一个笔记本上。要将其移回根目录，请将其拖放到“笔记本”标题上。目前只有桌面应用程序可以用于组织笔记本。
*   在**移动应用程序**中，支持显示和折叠/展开笔记本树，但目前不支持将子笔记本移动到不同的笔记本中。
*   终端应用支持显示子笔记本树结构，但不支持折叠/展开它们或移动子笔记本。

# Markdown

Joplin 使用并渲染一种带有少量变体和扩展的 Github 风格的 Markdown。特别是它增加了数学公式支持、交互式复选框和笔记链接支持。Joplin 还支持 Markdown 插件，允许启用和禁用各种高级 Markdown 功能。请参阅 [Markdown 指南](https://github.com/laurent22/joplin/blob/dev/readme/markdown.md) 以获取更多信息。

# 自定义 CSS

渲染的 Markdown 可以通过在配置文件目录中放置用户样式文件来自定义 `~/.config/joplin-desktop/userstyle.css` （此路径在您的设备上可能不同，请在 [配置屏幕](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md) 的 `通用` 页面顶部检查确切路径）。此文件支持标准 CSS 语法。Joplin ***必须*** 重启以应用新的 CSS，确保 Joplin 真正退出而不是仅最小化到托盘中。请注意，此文件同时用于显示笔记和打印笔记。请注意 CSS 在打印时可能的外观（例如，打印白色文本在黑色背景上通常不是想要的效果）。

整个 UI 可以通过在配置目录中放置自定义编辑器样式文件来自定义 `~/.config/joplin-desktop/userchrome.css` 。

重要提示：userstyle.css 和 userchrome.css 是为了方便提供的，但它们是高级设置，您定义的样式可能会在不同版本之间失效。如果您打算使用它们，请了解这可能需要您定期进行开发工作来保持它们的正常运行。Joplin 团队无法保证应用程序的 HTML 结构保持稳定。

# 插件

桌面应用可以通过插件扩展其标准功能。这些插件遵循 Joplin 的 [插件 API](https://joplinapp.org/api/references/plugin_api/classes/joplin.html)，并通过应用中的 `插件` 页面在 [配置屏幕](https://github.com/laurent22/joplin/blob/dev/readme/config_screen.md) 中进行安装和配置。

从这个菜单中，您可以搜索上传到 [Joplin 插件](https://github.com/joplin/plugins) 仓库的插件，也可以使用 'Joplin 插件存档' (*.jpl) 文件手动安装插件。
重新加载应用程序后，插件将出现在插件菜单中，可以在其中启用/禁用或完全移除这些插件。

更多信息，请参见[插件]

# 搜索

Joplin 实现了 SQLite 全文搜索（FTS4）扩展。这意味着所有笔记的内容会实时索引，搜索查询会非常快速地返回结果。支持[简单全文查询]和[全文索引查询]。以下为支持的查询列表：

SQLite FTS 的一个限制是它不支持不使用拉丁词边界（空格、制表符、标点符号）的语言。为了解决这个问题，Joplin 提供了一种自定义搜索模式，该模式不使用 FTS，但仍保留了所有功能（多词搜索、过滤器等）。其缺点之一是在较大的笔记集合中可能会变慢。此外，结果的排序也会不够准确，因为目前排名算法（BM25）仅实现了对 FTS 的支持。最后，在这种模式下，可以使用通配符 ``*``（``swim*``、````*swim` 和 ``ast*rix`` 都有效）。当前，如果检测到以下语言之一，此搜索模式将被启用：```

*   中文
*   日文
*   韩文
*   泰语

## 支持的查询

| 查询类型 | 描述 | 示例 |
| --- | --- | --- |
| 单个词 | 包含此术语的所有便签。 | 例如，搜索 `cat` 将返回包含此确切单词的所有便签。注意：它不会返回包含该子字符串的便签——因此，“cat”不会返回包含“cataclysmic”或“prevaricate”的便签。 |
| 多个词 | 包含所有这些单词的所有便签，但不一定相邻。 | dog cat - 将返回包含“dog”和“cat”这两个词的任何笔记，但不一定按这个顺序或相邻出现。它将不返回只包含“dog”或“cat”其中之一的结果。 |
| 短语 | 在需要时添加双引号，以返回包含这些**确切词语**且顺序不变的笔记。 | "shopping list" - 将返回包含这些确切词语且顺序不变的笔记。它将不返回例如包含“going shopping with my list”的笔记。 |
| 前缀 | 添加通配符以返回包含指定前缀的所有笔记。 | swim* - 将返回包含“swim”等的所有笔记，例如“swimming”、“swimsuit”等。重要提示：通配符只能位于末尾 - 在单词开头（例如 *swim）时将被忽略，并且在单词中间（例如 ast*rix）将被视为一个实际的星号。 |
| 切换到基本搜索 | 全文搜索的一个缺点是它会忽略大多数非字母字符。然而，在某些情况下，你可能也需要搜索这些字符。要实现这一点，你可以使用基本搜索。通过在搜索前加上斜杠 `/`（/）来切换到这种模式。这不会提供全文搜索的好处，但它可以让你精确地搜索你需要的内容。请注意，这可能会导致搜索速度大幅下降，甚至非常慢，这取决于你的查询。 | /"- [ ]" - 将返回包含未选中复选框的所有笔记。 |

## 搜索过滤器

你还可以使用搜索过滤器进一步限制搜索范围。

| 操作符 | 描述 | 示例 |
| --- | --- | --- |
| - | 如果放在文本术语之前，它会排除包含该术语的注释。你也可以将其放在过滤器之前以否定该过滤器。 | `-spam` 搜索所有不包含单词 `spam` 的注释。`office -trash` 搜索所有包含单词 `office` 但不包含单词 `trash` 的注释。 |
| any: | 返回满足任意/所有必需条件的注释。any:0 是默认值，表示所有条件都必须满足。 | any:1 cat dog 将返回包含单词 cat 或 dog 的笔记。any:0 cat dog 将返回同时包含单词 cat 和 dog 的注释。 |
| 标题: 主体: | 将搜索范围限制为仅标题或正文字段。 | title:"hello world" 搜索标题包含 hello 和 world 的笔记。title:hello -body:world 搜索标题包含 hello 且正文不包含 world 的笔记。 |
| 标签: | 限制搜索范围为指定标签的笔记。 | tag:office 搜索所有带有标签 office 的笔记。tag:office tag:important 搜索同时带有 office 和 important 标签的所有笔记。tag:office -tag:spam 搜索带有 tag office 但不带有 tag spam 的笔记。any:1 tag:office tag:spam 搜索带有 tag office 或 tag spam 的笔记。tag:be*ful 使用通配符进行搜索。tag:* 返回所有带有标签的笔记。-tag:* 返回所有不带标签的笔记。 |
| 笔记本: | 限制搜索范围为指定的笔记本。 | notebook:books 将搜索范围限制在 books 以及其所有子笔记本内。notebook:wheel*time 进行通配符搜索。 |
| 创建时间: updated: 到期时间: | 使用 YYYYMMDD 格式指定日期创建或更新的笔记。您也可以相对于当前日期、周、月或年进行搜索。 | created:20201218 将返回 2020 年 12 月 18 日或之后创建的笔记。-updated:20201218 将返回 2020 年 12 月 18 日之前更新的笔记。 created:20200118 -created:20201215 将返回2020年1月18日至2020年12月14日之间创建的笔记。 created:202001 -created:202003 将返回2020年1月至2020年2月之间创建的笔记。updated:1997 -updated:2020 将返回 1997 年至 2019 年之间更新的所有笔记。created:day-2 搜索最近两天内创建的所有笔记。updated:year-0 搜索当前年份内更新的所有笔记。-due:day+7 将返回所有在接下来的七天内到期或即将到期的任务。-due:day-5 搜索所有逾期超过五天的任务。 |
| 类型: | 将搜索范围限制在笔记或待办事项中。 | 输入 type:note 以返回所有笔记输入 type:todo 以返回所有待办事项 |
| iscompleted: | 将搜索限制在已完成或未完成的任务中。 | iscompleted:1 用于返回所有已完成的任务iscompleted:0 用于返回所有未完成的任务 |
| 纬度: 经度: 海拔: | 按位置筛选 | latitude:40 -latitude:50 返回纬度 >= 40 且 < 50 的笔记 |
| 资源： | 按附件 MIME 类型筛选 | resource:image/jpeg 用于返回带有 jpeg 附件的笔记。-resource:application/pdf 用于返回不带有 pdf 附件的笔记。resource:image/* 用于返回包含任何图片的笔记。 |
| 源链接： | 按源 URL 过滤 | sourceurl:https://www.google.comsourceurl:*joplinapp.org 进行通配符搜索。 |
| ID： | 按笔记 ID 过滤 | id:9cbc1b4f242043a9b8a50627508bccd5 返回指定 id 的笔记 |

注意：在命令行客户端中，使用否定过滤器时需要使用 `--` 转义查询。例如：`:search -- "-tag:tag1"`。

过滤器默认通过“AND”连接，具体连接方式取决于以下规则：

*   默认情况下，所有过滤器通过“AND”连接。
*   若要覆盖这种默认行为，请使用 `any` 过滤器，此时搜索项将通过“OR”连接。
*   `notebook` 过滤器有例外情况，它们通过“OR”连接。原因是笔记不能同时存在于多个笔记本中。

错误的搜索过滤条件会被解释为短语搜索，例如拼写错误的 ``nootebook:Example`` 或不存在的 ``https://joplinapp.org``。

## 搜索顺序

笔记按“相关性”排序。目前这意味着包含请求词汇次数最多的笔记排在最前面。对于包含多个词汇的查询，词汇之间的距离也会影响排序。这还处于实验阶段，如果您发现某个搜索查询返回了意外的结果，请在论坛中报告该问题，并尽可能提供详细信息以便重现问题。

# Goto Anything

在桌面应用程序中，按下 ` Ctrl+P ` 或 ` Cmd+P `，然后输入笔记标题或部分内容以跳转到该笔记。或者输入 ` # ` 后跟标签名称，或输入 ` @ ` 后跟笔记本名称。

# 多配置文件支持

要创建一个新的配置文件，请打开“文件”>“切换配置文件”，然后选择“创建新配置文件”，输入配置文件名称并点击“确定”。应用程序会自动切换到这个新配置文件，你可以对其进行配置。

要切换回之前的配置文件，请再次打开“文件”>“切换配置文件”，然后选择“默认”。

请注意，所有配置文件共享某些设置，例如语言、字体大小、主题等。这样做的目的是在切换配置文件时不需要重新配置每个细节。其他设置，如同步配置，则是针对每个配置文件的。

该功能目前仅在桌面端可用，不久后会移植到移动设备。

# 捐赠

捐赠给 Joplin 可以支持项目的开发。开发高质量的应用程序主要需要时间，但还有一些费用，例如用于签署应用程序的数字证书、应用商店费用、托管费用等。最重要的是，您的捐赠可以让开发保持当前的标准。

请参阅[捐赠页面](https://github.com/laurent22/joplin/blob/dev/readme/donate.md)了解如何支持 Joplin 的开发。

# 社区

| 名称 | 描述 |
| --- | --- |
| 支持论坛 | 这是关于 Joplin 的一般讨论区，用户支持、软件开发问题以及讨论新功能的地方。也是最新测试版本的发布和讨论的地方。 |
| Twitter 动态 | 在 Twitter 上关注我们 |
| Mastodon 动态 | 在 Mastodon 上关注我们 |
| Patreon 页面 | 最新消息通常会发布在那里 |
| Discord 服务器 | 我们的聊天服务器 |
| LinkedIn | 我们的 LinkedIn 页面 |
| Lemmy 社区 | 也是一个获取帮助的好地方 |

# 贡献

请参阅指南，了解如何为 Joplin 的开发做出贡献：[https://github.com/laurent22/joplin/blob/dev/CONTRIBUTING.md](https://github.com/laurent22/joplin/blob/dev/CONTRIBUTING.md)

# 本地化

Joplin 目前提供以下语言版本。如果您希望贡献一种新的翻译，请按照以下步骤操作：

*   请下载 Poedit，这是一个翻译编辑器，并进行安装。
*   [下载待翻译的文件](https://raw.githubusercontent.com/laurent22/joplin/dev/packages/tools/locales/joplin.pot) 。
*   在 Poedit 中，打开这个.pot 文件，进入 Catalog 菜单并点击 Configuration。将“Country”和“Language”改为你的国家和语言。
*   从那时起，你就可以开始翻译文件了。
*   完成后，请[提交一个拉取请求](https://github.com/laurent22/joplin/pulls)并将文件添加到其中。

此翻译将适用于桌面、移动和终端三个应用程序。

要更新翻译，请按照上述步骤操作，但不要获取 .pot 文件，而是从下方表格中获取您语言的 .po 文件。

当前翻译：

|  | 语言 | Po 文件 | 最后翻译者 | 完成百分比 |
| --- | --- | --- | --- | --- |
<img src="https://joplinapp.org/images/flags/country-4x3/arableague.png" width="16px"/>  |  Arabic  |  [ar](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ar.po)  |  [Whaell O](mailto:Whaell@protonmail.com)  |  79%
<img src="https://joplinapp.org/images/flags/es/basque_country.png" width="16px"/>  |  Basque  |  [eu](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/eu.po)  |  juan.abasolo@ehu.eus  |  22%
<img src="https://joplinapp.org/images/flags/country-4x3/ba.png" width="16px"/>  |  Bosnian (Bosna i Hercegovina)  |  [bs_BA](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/bs_BA.po)  |  [Derviš T.](mailto:dervis.t@pm.me)  |  57%
<img src="https://joplinapp.org/images/flags/country-4x3/bg.png" width="16px"/>  |  Bulgarian (България)  |  [bg_BG](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/bg_BG.po)  |    |  45%
<img src="https://joplinapp.org/images/flags/es/catalonia.png" width="16px"/>  |  Catalan  |  [ca](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ca.po)  |  [Xavi Ivars](mailto:xavi.ivars@gmail.com)  |  88%
<img src="https://joplinapp.org/images/flags/country-4x3/hr.png" width="16px"/>  |  Croatian (Hrvatska)  |  [hr_HR](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/hr_HR.po)  |  [Milo Ivir](mailto:mail@milotype.de)  |  99%
<img src="https://joplinapp.org/images/flags/country-4x3/cz.png" width="16px"/>  |  Czech (Česká republika)  |  [cs_CZ](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/cs_CZ.po)  |  Fejby  |  98%
<img src="https://joplinapp.org/images/flags/country-4x3/dk.png" width="16px"/>  |  Dansk (Danmark)  |  [da_DK](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/da_DK.po)  |  ERYpTION  |  98%
<img src="https://joplinapp.org/images/flags/country-4x3/de.png" width="16px"/>  |  Deutsch (Deutschland)  |  [de_DE](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/de_DE.po)  |  [MrKanister](mailto:pueblos_spatulas@aleeas.com)  |  98%
<img src="https://joplinapp.org/images/flags/country-4x3/ee.png" width="16px"/>  |  Eesti Keel (Eesti)  |  [et_EE](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/et_EE.po)  |    |  44%
<img src="https://joplinapp.org/images/flags/country-4x3/gb.png" width="16px"/>  |  English (United Kingdom)  |  [en_GB](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/en_GB.po)  |    |  100%
<img src="https://joplinapp.org/images/flags/country-4x3/us.png" width="16px"/>  |  English (United States of America)  |  [en_US](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/en_US.po)  |    |  100%
<img src="https://joplinapp.org/images/flags/country-4x3/es.png" width="16px"/>  |  Español (España)  |  [es_ES](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/es_ES.po)  |  [Francisco Villaverde](mailto:teko.gr@gmail.com)  |  97%
<img src="https://joplinapp.org/images/flags/esperanto.png" width="16px"/>  |  Esperanto  |  [eo](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/eo.po)  |  Marton Paulo  |  25%
<img src="https://joplinapp.org/images/flags/country-4x3/fi.png" width="16px"/>  |  Finnish (Suomi)  |  [fi_FI](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/fi_FI.po)  |  mrkaato0  |  98%
<img src="https://joplinapp.org/images/flags/country-4x3/fr.png" width="16px"/>  |  Français (France)  |  [fr_FR](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/fr_FR.po)  |  Laurent Cozic  |  100%
<img src="https://joplinapp.org/images/flags/es/galicia.png" width="16px"/>  |  Galician (España)  |  [gl_ES](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/gl_ES.po)  |  [Marcos Lans](mailto:marcoslansgarza@gmail.com)  |  29%
<img src="https://joplinapp.org/images/flags/country-4x3/id.png" width="16px"/>  |  Indonesian (Indonesia)  |  [id_ID](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/id_ID.po)  |  [Wisnu Adi Santoso](mailto:waditos@gmail.com)  |  88%
<img src="https://joplinapp.org/images/flags/country-4x3/it.png" width="16px"/>  |  Italiano (Italia)  |  [it_IT](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/it_IT.po)  |  [Manuel Tassi](mailto:mannivuwiki@gmail.com)  |  80%
<img src="https://joplinapp.org/images/flags/country-4x3/hu.png" width="16px"/>  |  Magyar (Magyarország)  |  [hu_HU](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/hu_HU.po)  |  [Magyari Balázs](mailto:balmag@gmail.com)  |  77%
<img src="https://joplinapp.org/images/flags/country-4x3/be.png" width="16px"/>  |  Nederlands (België, Belgique, Belgien)  |  [nl_BE](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/nl_BE.po)  |    |  78%
<img src="https://joplinapp.org/images/flags/country-4x3/nl.png" width="16px"/>  |  Nederlands (Nederland)  |  [nl_NL](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/nl_NL.po)  |  [MHolkamp](mailto:mholkamp@users.noreply.github.com)  |  87%
<img src="https://joplinapp.org/images/flags/country-4x3/no.png" width="16px"/>  |  Norwegian (Norge, Noreg)  |  [nb_NO](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/nb_NO.po)  |  [Mats Estensen](mailto:code@mxe.no)  |  87%
<img src="https://joplinapp.org/images/flags/country-4x3/ir.png" width="16px"/>  |  Persian  |  [fa](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/fa.po)  |  [Kourosh Firoozbakht](mailto:kourox@protonmail.com)  |  54%
<img src="https://joplinapp.org/images/flags/country-4x3/pl.png" width="16px"/>  |  Polski (Polska)  |  [pl_PL](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/pl_PL.po)  |  [X3NO](mailto:X3NO@disroot.org)  |  89%
<img src="https://joplinapp.org/images/flags/country-4x3/br.png" width="16px"/>  |  Português (Brasil)  |  [pt_BR](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/pt_BR.po)  |  [Douglas Leão](mailto:djlsplays@gmail.com)  |  87%
<img src="https://joplinapp.org/images/flags/country-4x3/pt.png" width="16px"/>  |  Português (Portugal)  |  [pt_PT](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/pt_PT.po)  |  [Diogo Caveiro](mailto:dcaveiro@yahoo.com)  |  72%
<img src="https://joplinapp.org/images/flags/country-4x3/ro.png" width="16px"/>  |  Română  |  [ro](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ro.po)  |  [Cristi Duluta](mailto:cristi.duluta@gmail.com)  |  50%
<img src="https://joplinapp.org/images/flags/country-4x3/si.png" width="16px"/>  |  Slovenian (Slovenija)  |  [sl_SI](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/sl_SI.po)  |  [Martin Korelič](mailto:martin.korelic@protonmail.com)  |  79%
<img src="https://joplinapp.org/images/flags/country-4x3/se.png" width="16px"/>  |  Svenska  |  [sv](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/sv.po)  |  [Jonatan Nyberg](mailto:jonatan@autistici.org)  |  99%
<img src="https://joplinapp.org/images/flags/country-4x3/th.png" width="16px"/>  |  Thai (ประเทศไทย)  |  [th_TH](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/th_TH.po)  |    |  36%
<img src="https://joplinapp.org/images/flags/country-4x3/vn.png" width="16px"/>  |  Tiếng Việt  |  [vi](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/vi.po)  |    |  77%
<img src="https://joplinapp.org/images/flags/country-4x3/tr.png" width="16px"/>  |  Türkçe (Türkiye)  |  [tr_TR](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/tr_TR.po)  |  [Arda Kılıçdağı](mailto:arda@kilicdagi.com)  |  99%
<img src="https://joplinapp.org/images/flags/country-4x3/ua.png" width="16px"/>  |  Ukrainian (Україна)  |  [uk_UA](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/uk_UA.po)  |  [Vyacheslav Andreykiv](mailto:vandreykiv@gmail.com)  |  71%
<img src="https://joplinapp.org/images/flags/country-4x3/gr.png" width="16px"/>  |  Ελληνικά (Ελλάδα)  |  [el_GR](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/el_GR.po)  |  [Harris Arvanitis](mailto:xaris@tuta.io)  |  87%
<img src="https://joplinapp.org/images/flags/country-4x3/ru.png" width="16px"/>  |  Русский (Россия)  |  [ru_RU](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ru_RU.po)  |  [Dmitriy K](mailto:dmitry@atsip.ru)  |  99%
<img src="https://joplinapp.org/images/flags/country-4x3/rs.png" width="16px"/>  |  српски језик (Србија)  |  [sr_RS](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/sr_RS.po)  |    |  64%
<img src="https://joplinapp.org/images/flags/country-4x3/cn.png" width="16px"/>  |  中文 (简体)  |  [zh_CN](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/zh_CN.po)  |  [wh201906](mailto:wh201906@yandex.com)  |  96%
<img src="https://joplinapp.org/images/flags/country-4x3/tw.png" width="16px"/>  |  中文 (繁體)  |  [zh_TW](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/zh_TW.po)  |  [Kevin Hsu](mailto:kevin.hsu.hws@gmail.com)  |  88%
<img src="https://joplinapp.org/images/flags/country-4x3/jp.png" width="16px"/>  |  日本語 (日本)  |  [ja_JP](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ja_JP.po)  |  [genneko](mailto:genneko217@gmail.com)  |  88%
<img src="https://joplinapp.org/images/flags/country-4x3/kr.png" width="16px"/>  |  한국어  |  [ko](https://github.com/laurent22/joplin/blob/dev/packages/tools/locales/ko.po)  |  [Ji-Hyeon Gim](mailto:potatogim@potatogim.net)  |  88%

# 贡献者

感谢所有为 Joplin 源代码做出贡献的人！

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| laurent22 | tessus | CalebJohn | mic704b | roman-r-m |
| genneko | j-krl | tanrax | naviji | PackElend |
| rtmkrlv | fmrtn | potatogim | devonzuegel | anjulalk |
| gabcoh | matsest | abonte | Abijeet | ishantgupta777 |
| JackGruber | Ardakilic | rabeerz | coderrsid | foxmask |
| innocuo | Rahulm2310 | readingsnail | mablin7 | XarisA |
| jonath92 | alexdevero | Runo-saduwa | marcosvega91 | petrz12 |
| rnbastos | ProgramFan | zblesk | vsimkus | moltenform |
| nishantwrp | zuphilip | Rishabh-malhotraa | metbril | WhiredPlanck |
| milotype | 药 ayer | ylc395 | RenatoXSR | RedDocMD |
| q1011 | amitsin6h | Atalanttore | Mannivu | martonpaulo |
| mmahmoudian | rccavalcanti | ShaneKilkelly | sinkuu | stweil |
| conyx | anihm136 | archont00 | bradmcl | tfinnberg |
| amandamcg | marcushill | nathanleiby | RaphaelKimmig | Vaso3 |
| sensor-freak | lkiThakur | infinity052 | BartBucknill | mrwulf |
| chrisb86 | chrmoritz | Daeraxa | 阐述 | ethan42411 |
| JOJ0 | jalajcodes | jblunck | jdrobertso | Jesssullivan |
| jmontane | johanhammar | solariz | maicki | mjjzf |
| rt-oliveira | sebastienjust | sealch | StarFang208 | Subhra264 |
| SubodhDahal | TobiasDev | Whaell | jyuvaraj03 | kowalskidev |
| alexchee | axq | barbowza | eresytter | lightray22 |
| lscolombo | mrkaato | pf-siedler | ruuti | s1nceri7y |
| cornava | 浇水 | ikunya | Ahmad45123 | bedwardly-down |
| dcaveiro | hexclover | 2jaeyeol | thackeraaron | aaronxn |
| xUser5000 | iamabhi222 | Aksh-Konda | alanfortlink | AverageUser2 |
| afischer211 | a13xk | apankratov | teterkin | avanderberg |
| 宁静 | lex111 | Alkindi42 | Jumanjii | AlphaJack |
| Lord-Aman | richtwin567 | ajilderda | adrynov | andrewperry |
| tekdel | anshuman9999 | 拉克拉德 | 技术-J | 沙欣 |
| 安东尼-拉马达斯 | heyapoorva | assimd | Atrate | Beowulf2 |
| bimlas | brenobaptista | brttbndr | carlbordum | carlosedp |
| chaifeng | charles-e | cyy5358 | Chillu1 | Techwolf12 |
| cloudtrends | idcristi | damienmascre | daniellandau | danil-tolkachev |
| darshani28 | daukadolt | NeverMendel | dervist | diego-betto |
| erdody | domgoodwin | b4mboo | donbowman | sirnacnud |
| dflock | drobilica | educbraga | eduardokimmel | VodeniZeko |
| ei-ke | einverne | eodeluga | fathyar | fer22f |
| fpindado | FleischKarussel | talkdirty | gmaubach | gmag11 |
| Jackymancs4 | Glandos | vibraniumdev | gusbemacbe | HOLLYwyh |
| Fvbor | bennetthanna | harshitkathuria | 视图 | ianjs |
| iahmedbacha | IrvinDominin | ishammahajan | ffadilaputra | JRaiden16 |
| jacobherrington | 詹姆斯·阿吉纳 | jrwrigh | 杰拉德·克劳夫 | 易变变量 |
| innkuika | JoelRSimpson | joeltaylor | exc | JonathanPlasse |
| joesfer | joybinchen | kaustubhsh | y-usuzumi | xuhcc |
| kirtanprht | k0ur0x | kklas | xmlangel | troilus |
| lboullo0 | dbinary | marc-bouvier | mvonmaltitz | mlkood |
| plextoriano | Marmo | mcejp | freaktechnik | martinkorelic |
| Petemir | matsair | mgroth0 | silentmatt | maxs-test |
| MichBoi | MichipX | MrTraduttore | sanjarcode | Mustafa-ALD |
| NJannasch | zomglings | Frichetten | nicolas-suzuki | Ouvill |
| shorty2380 | dist3r | rakleed | idle-code | bobchao |
| Diadlo | pranavmodx | R3dError | rajprakash00 | rahil1304 |
| rasulkireev | reinhart1010 | 重写 | ambrt | 德卡德斯 |
| 四步进器 | rodgco | Ronnie76er | roryokane | ruzaq |
| szokesandor | SamuelBlickle | livingc0l0ur | bronson | semperor |
| shawnaxsom | SFoskitt | kcrt | xissy | tams |
| Tekki | ThatcherC | TheoDutch | tbroadley | Kriechi |
| tkilaker | Tim-Erwin | tcyrus | tobias-grasse | strobeltobias |
| kostegit | tbergeron | Ullas-Aithal | MyTheValentinus | vassudanagunta |
| vijayjoshi16 | max-keviv | vandreykiv | WisdomCode | xsak |
| ymitos | 废除所有私有财产 | aerotog | albertopasqualetto | asrient |
| bestlibre | 无聊10 | 卡多夫 | colorchestra | 网络流浪者 |
| dartero | delta-emil | doc75 | dsp77 | ebayer |
| elsiehupp | espinosa | exponentactivity | exprez135 | fab4x |
| fabianski7 | rasperepodvipodvert | gasolin | githubaccount073 | hms5232 |
| hydrandt | iamtalwinder | jabdoa2 | jduar | jibedoubleve |
| johanvanheusden | jtagcat | konhi | krzysiekwie | 灯塔灯泡 |
| luzpaz | majsterkovic | mak2002 | nmiquan | nullpointer666 |
| oscaretu | oskarsh | osso73 | 超灵 | pensierocrea |
| pomeloy | rhtenhove | rikanotank1 | rxliuli | simonsan |
| stellarpower | suixinio | sumomo-99 | xtatsux | taw00 |
| tcassaert | victante | Voltinus | xcffl | yourcontact |
| zaoyifan | zawnk | zen-quo | zozolina123 | 许可 |
| paventyang | jackytsu | zhangmx |  |  |