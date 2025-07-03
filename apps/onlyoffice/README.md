# 使用说明

部署完成后按照页面提示，在终端执行命令，开启服务。

# 原始相关

* * *

[![License](https://img.shields.io/badge/License-GNU%20AGPL%20V3-green.svg?style=flat)](https://www.gnu.org/licenses/agpl-3.0.en.html) ![Release](https://img.shields.io/badge/Release-v7.4.0-blue.svg?style=flat)

## 概述

[ONLYOFFICE Docs](https://www.onlyoffice.com/office-suite.aspx?utm_source=github&utm_medium=cpc&utm_campaign=GitHubDS)\* 是一个免费的协作在线办公套件，包含文本、电子表格和演示文稿的查看器和编辑器，以及表单和 PDF，完全兼容 Office Open XML 格式：.docx、.xlsx、.pptx，并支持实时协作编辑。

ONLYOFFICE Docs 可以作为 [ONLYOFFICE Workspace](https://www.onlyoffice.com/workspace.aspx?utm_source=github&utm_medium=cpc&utm_campaign=GitHubCS) 的一部分使用，或者与 [第三方同步与分享解决方案](https://www.onlyoffice.com/all-connectors.aspx?utm_source=github&utm_medium=cpc&utm_campaign=GitHubDS) （例如 Nextcloud、ownCloud、Seafile）结合使用，以在其界面中实现协作编辑。

它有三个版本 - [社区版、企业版和开发者版](#onlyoffice-docs-editions) 。

\* 自从 6.0 版本起，Document Server 以新的名称 ONLYOFFICE Docs 进行分发。

## 组件

ONLYOFFICE Docs 包含以下组件：

*   [服务器](https://github.com/ONLYOFFICE/server) \- 作为 ONLYOFFICE Docs 所有其他组件基础的后端服务器软件层。
*   [core](https://github.com/ONLYOFFICE/core) - ONLYOFFICE Docs 的核心服务器组件，支持将最流行的办公文档格式（DOC, DOCX, ODT, RTF, TXT, PDF, HTML, EPUB, XPS, DjVu, XLS, XLSX, ODS, CSV, PPT, PPTX, ODP）相互转换。
*   [sdkjs](https://github.com/ONLYOFFICE/sdkjs) - ONLYOFFICE Docs 的 JavaScript SDK，包含所有内置组件的客户端交互 API。
*   [web-apps](https://github.com/ONLYOFFICE/web-apps) - ONLYOFFICE Docs 的前端，构建程序界面，允许用户使用文档编辑器的通用界面创建、编辑、保存和导出文本、电子表格和演示文稿文档。
*   [dictionaries](https://github.com/ONLYOFFICE/dictionaries) - 用于 ONLYOFFICE Docs 拼写检查的各种语言词典。

## 插件

ONLYOFFICE Docs 提供插件支持，允许开发者向编辑器添加与 OOXML 格式不直接相关的特定功能。更多信息请参见 [我们的 API](https://api.onlyoffice.com/plugin/basic) 或访问 github [插件仓库](https://github.com/ONLYOFFICE/onlyoffice.github.io) 。

## 功能

ONLYOFFICE Docs 包含以下编辑器：

*   [ONLYOFFICE 文档编辑器](https://www.onlyoffice.com/document-editor.aspx?utm_source=GitHub&utm_medium=social&utm_campaign=GitHubDesktop)
*   [ONLYOFFICE 表格编辑器](https://www.onlyoffice.com/spreadsheet-editor.aspx?utm_source=GitHub&utm_medium=social&utm_campaign=GitHubDesktop)
*   [ONLYOFFICE 演示文稿编辑器](https://www.onlyoffice.com/presentation-editor.aspx?utm_source=GitHub&utm_medium=social&utm_campaign=GitHubDesktop)
*   [ONLYOFFICE 表单创建器](https://www.onlyoffice.com/form-creator.aspx?utm_source=GitHub&utm_medium=social&utm_campaign=GitHubDesktop)
*   [ONLYOFFICE PDF 阅读器和转换器](https://www.onlyoffice.com/pdf-reader.aspx?utm_source=GitHub&utm_medium=social&utm_campaign=GitHubDesktop)

编辑器允许您创建、编辑、保存和导出文本、电子表格和演示文稿文档，并且还具有以下功能：

*   协作编辑
*   象形文字支持
*   审阅
*   拼写检查

## ONLYOFFICE Docs 版本

ONLYOFFICE 提供不同版本的在线文档编辑器，您可以将其部署到自己的服务器上。

ONLYOFFICE Docs（打包为 Document Server）:

*   社区版（`onlyoffice-documentserver` 包）
*   企业版（`onlyoffice-documentserver-ee` 包）
*   开发者版（`onlyoffice-documentserver-de` 包）

以下表格将帮助您做出正确的选择。

| 定价与许可 | 社区版 | 企业版 | 开发者版 |
| --- | --- | --- | --- |
|  | 立即获取 | 免费试用 | 免费试用 |
| 费用 | FREE | 前往定价页面 | 前往定价页面 |
| 同时连接数 | 最多 20 人 | 如所选定价计划 | 如所选定价计划 |
| 用户数量 | 最多 20 项推荐 | 如所选定价计划所示 | 如所选定价计划所示 |
| 聚类 | \- | + | + |
| 许可证 | GNU AGPL v.3 | 专有 | 专有 |
| 支持 | 社区版 | 企业版 | 开发者版 |
| 文档 | 帮助中心 | 帮助中心 | 帮助中心 |
| 标准支持 | GitHub 或付费 | 包含一年支持 | 包含一年支持 |
| 高级支持 | 联系我们 | 联系我们 | 联系我们 |
| 服务 | 社区版 | 企业版 | 开发者版 |
| 转换服务 | + | + | + |
| 文档构建服务 | + | + | + |
| 接口 | 社区版 | 企业版 | 开发者版 |
| 标签页界面 | + | + | + |
| 暗主题 | + | + | + |
| 125%, 150%, 175%, 200% 放大比例 | + | + | + |
| 白标 | \- | \- | + |
| 集成测试示例（node.js） | + | + | + |
| 移动网页编辑器 | \- | +\*\* | +\*\* |
| 插件与宏 | 社区版 | 企业版 | 开发者版 |
| 插件 | + | + | + |
| 宏 | + | + | + |
| 协作功能 | 社区版 | 企业版 | 开发者版 |
| 双人编辑模式 | + | + | + |
| 评论 | + | + | + |
| 内置聊天 | + | + | + |
| 审阅和跟踪更改 | + | + | + |
| 显示跟踪更改模式 | + | + | + |
| 版本历史 | + | + | + |
| 文档编辑器功能 | 社区版 | 企业版 | 开发者版 |
| 字体和段落格式化 | + | + | + |
| 对象插入 | + | + | + |
| 添加内容控件 | + | + | + |
| 编辑内容控件 | + | + | + |
| 布局工具 | + | + | + |
| 目录 | + | + | + |
| 导航栏 | + | + | + |
| 邮件合并 | + | + | + |
| 比较文档 | + | + | + |
| 电子表格编辑器功能 | 社区版 | 企业版 | 开发者版 |
| 字体和段落格式 | + | + | + |
| 对象插入 | + | + | + |
| 函数、公式、方程 | + | + | + |
| 表格模板 | + | + | + |
| 透视表 | + | + | + |
| 数据验证 | + | + | + |
| 条件格式 | + | + | + |
| 火花图 | + | + | + |
| 工作表视图 | + | + | + |
| 沉浸式翻译功能 | 社区版 | 企业版 | 开发者版 |
| 字体和段落格式化 | + | + | + |
| 插入对象 | + | + | + |
| 过渡效果 | + | + | + |
| 演示者模式 | + | + | + |
| 注释 | + | + | + |
| 表单创建者功能 | 社区版 | 企业版 | 开发者版 |
| 添加表单字段 | + | + | + |
| 表单预览 | + | + | + |
| 保存为 PDF | + | + | + |
| 安全功能 | 社区版 | 企业版 | 开发者版 |
| 端到端加密的私密房间\*\*\* | + | + | \- |
|  | 立即获取 | 免费试用 | 免费试用 |

\*\* 如果 DMS 支持
\*\*\* 通过私人房间进行端到端加密需要 ONLYOFFICE Workspace

## 如何在本地服务器上安装

安装 ONLYOFFICE Docs 最简单的方法是使用 **官方 Docker 镜像** ( [官方源代码](https://github.com/ONLYOFFICE/Docker-DocumentServer) )

*   [安装 ONLYOFFICE Docs Docker](https://helpcenter.onlyoffice.com/installation/docs-community-install-docker.aspx)
*   [安装 ONLYOFFICE Docs for Linux](https://helpcenter.onlyoffice.com/installation/docs-community-install-ubuntu.aspx)
*   [安装 ONLYOFFICE Docs for Windows](https://helpcenter.onlyoffice.com/installation/docs-community-install-windows.aspx)

## 如何构建

从源代码构建 ONLYOFFICE Docs 以供本地服务器使用的方法请参阅 [我们的帮助中心](https://helpcenter.onlyoffice.com/installation/docs-community-compile.aspx) 。

## 许可证

ONLYOFFICE Docs 采用 GNU Affero 公开许可证，版本 3.0。更多详情请参见 [LICENSE](https://onlyo.co/38YZGJh)。

## 用户反馈与支持

如果您在使用 ONLYOFFICE Docs 时遇到任何问题或有任何疑问，请访问我们的官方论坛以获取答案：[forum.onlyoffice.com](https://forum.onlyoffice.com)，或者您可以在 [Stack Overflow](https://stackoverflow.com/questions/tagged/onlyoffice) 上提问和回答 ONLYOFFICE 开发相关的问题。