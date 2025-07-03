## 简介

Seafile 是一个具有隐私保护和团队协作功能的开源云存储系统。文件集合称为库。每个库可以单独同步。库还可以使用用户自选的密码进行加密。Seafile 还允许用户创建群组，并轻松地将文件分享到群组中。

## 功能概要

Seafile 具有以下功能：

### 文件同步

1.  任何文件夹的选择性同步。
2.  根据历史记录而不是时间戳正确处理文件冲突。
3.  仅传输内容差异到服务器。中断的传输可以恢复。
4.  与两个或多个服务器同步。
5.  与现有文件夹同步。

### 文件共享与协作

1.  在用户之间或组内共享文件夹。
2.  带有密码保护的下载链接
3.  上传链接
4.  版本控制

### 驱动端客户端

*   通过虚拟驱动器访问云端所有文件。
*   文件按需同步。

### 隐私保护

1.  用户自选密码的库加密。
2.  使用桌面同步时的客户端加密

### 在线文档和知识管理（新）

*   所见即所得的在线 Markdown 编辑
*   在线文档的草稿审核流程
*   元数据管理，包括
    *   文件标签
    *   相关文档
*   维基模式
*   实时通知

## Seafile 组件的源代码仓库

Seafile 的每个组件都有自己的源代码仓库托管在 Github 上。

*   同步客户端守护进程（此仓库）: [https://github.com/haiwen/seafile](https://github.com/haiwen/seafile)
*   同步客户端 GUI: [https://github.com/haiwen/seafile-client](https://github.com/haiwen/seafile-client)
*   服务器核心: [https://github.com/haiwen/seafile-server](https://github.com/haiwen/seafile-server)
*   服务器 Web 界面: [https://github.com/haiwen/seahub](https://github.com/haiwen/seahub)
*   iOS 应用: [https://github.com/haiwen/seafile-iOS](https://github.com/haiwen/seafile-iOS)
*   Android 应用：[https://github.com/haiwen/seadroid](https://github.com/haiwen/seadroid)
*   WebDAV： [https://github.com/haiwen/seafdav](https://github.com/haiwen/seafdav)

在 6.0 版本之前，“同步客户端守护进程”和“服务器核心”的源代码混在一起，可以在 [https://github.com/haiwen/seafile](https://github.com/haiwen/seafile) 找到。但从 6.0 版本开始，服务器核心被分离开来，单独成为一个仓库。因此，同步客户端守护进程仓库仍然是 Seafile 项目在 Github 上的“主页”。

# 构建与运行

请参见 [https://manual.seafile.com/build_seafile/server](https://manual.seafile.com/build_seafile/server)

# 错误和功能请求报告

请仅在 GitHub 问题中提交 Bug（专业版客户应通过邮件联系我们）：

*   服务器、Web 界面（Seahub）和桌面客户端：[https://github.com/haiwen/seafile/issues](https://github.com/haiwen/seafile/issues)
*   Android 客户端：[https://github.com/haiwen/seadroid/issues](https://github.com/haiwen/seadroid/issues)
*   iOS 客户端：[https://github.com/haiwen/seafile-iOS/issues](https://github.com/haiwen/seafile-iOS/issues)

可以在论坛 [https://forum.seafile.com/](https://forum.seafile.com/) 上提出功能请求和讨论安装/使用过程中遇到的问题。

# 国际化 (I18n)

*   [翻译 Seafile 网页界面](https://github.com/haiwen/seafile/wiki/Seahub-Translation)
*   [翻译 Seafile 桌面客户端](https://github.com/haiwen/seafile-client/#internationalization)
*   [翻译 Seafile Android 应用](https://github.com/haiwen/seadroid#internationalization)
*   [翻译 Seafile iOS 应用](https://github.com/haiwen/seafile-ios#internationalization-i18n)

# 变更日志

见 [https://manual.seafile.com/changelog/server-changelog/](https://manual.seafile.com/changelog/server-changelog/)

# 为什么采用开源

我们的主要目标是打造一款顶级产品。我们认为这个目标只能通过与全世界合作来实现。

# 贡献

如需更多信息，请阅读 [贡献](https://manual.seafile.com/contribution/) 。

# 许可证

*   Seafile iOS 客户端: Apache License v2
*   Seafile Android 客户端: GPLv3
*   桌面同步客户端（此仓库）: GPLv2
*   Seafile 服务器核心: AGPLv3
*   Seahub (Seafile 服务器 Web 界面): Apache 许可证 v2

# 联系

Twitter: @seafile [https://twitter.com/seafile]

论坛: [https://forum.seafile.com]