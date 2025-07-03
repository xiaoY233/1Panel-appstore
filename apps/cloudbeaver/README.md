# CloudBeaver 社区版

![](https://github.com/dbeaver/cloudbeaver/wiki/images/cloudbeaver-logo.png)

Cloud 数据库管理器 - 社区版。
CloudBeaver 是一个 web 服务器，提供丰富的 web 界面。服务器本身是一个 Java 应用程序，web 部分使用 TypeScript 和 React 编写。
它免费提供使用，并且是开源的（采用 [Apache 2](https://github.com/dbeaver/cloudbeaver/blob/devel/LICENSE) 许可证）。 %%
访问 [WIKI](https://github.com/dbeaver/cloudbeaver/wiki) 以获取更多细节。

![](https://github.com/dbeaver/cloudbeaver/wiki/images/demo_screenshot_1.png)

## 使用 Docker 运行

*   [官方 Docker 仓库](https://hub.docker.com/r/dbeaver/cloudbeaver)
*   [运行说明](https://github.com/dbeaver/cloudbeaver/wiki/Run-Docker-Container)

## 演示服务器

您可以在以下地址查看 CloudBeaver 的实时演示：\[https://demo.cloudbeaver.io\](https://demo.cloudbeaver.io)

[数据库访问说明](https://github.com/dbeaver/cloudbeaver/wiki/Demo-Server)

## 更新日志

### CloudBeaver 23.1.3 - 2023-07-24

*   用户可以同时编辑资源，从而可以协同工作；
*   我们改进了搜索栏的用户体验——用户可以通过点击叉号图标删除查询或请求；
*   搜索请求目前会考虑文件名，但不包括.sql 文件扩展名；
*   已进行了不同的错误修复和增强。

### CloudBeaver 23.1.2 - 2023-07-10

*   我们改进了 SQL 编辑器的功能，增加了显示嵌套对象数组的表格的支持；
*   导出时压缩文件的能力可以提高下载速度，尤其是对于大文件；
*   新的设置面板显示来自数据编辑器的最小获取大小、最大获取大小和默认获取大小等产品配置设置；
*   不同问题已修复并增加了多项改进。

### CloudBeaver 23.1.1 - 2023-06-26

*   现在，当连接在全局配置 json 文件中预配置到工作空间时，连接将始终显示。
*   不同问题已修复并增加了多项改进。

### CloudBeaver 23.1.0 - 2023-06-05

自 23.0.0 版以来的更改

*   数据查看器：
    *   在数据查看器中新增了分组面板菜单。此面板可以从数据库列中提取用于计数的唯一值。用户可以将列拖放到分组面板中并立即获得结果。分组面板中还提供了对结果进行排序、过滤和导出的功能。
*   SQL 编辑器:
    *   我们改进了 SQL 编辑器的性能——现在处理包含多达 10000 行的脚本不再有任何挑战；
    *   在 SQL 编辑器中，按下 Tab/Space 后跟 Enter 键会使光标移动到新行；
    *   在 SQL 编辑器中，当光标返回查询时，会显示之前的提示；
    *   运行包含分号的 SQL 时的错误已修复。
*   连接：
    *   如果保存数据时出现错误，将打开所选连接对话框的选项卡以允许进行修正；
    *   PostgreSQL 的 URL 配置现在正确地只显示一个数据库。
*   驱动管理：
    *   CE 版本现在提供了更新的 sqlite-jdbc 驱动，版本为 3.41.2；
    *   CloudBeaver 可以连接到 H2 数据库版本 2；
    *   CloudBeaver 内部数据库升级到最新的 H2 版本 2 以避免安全漏洞问题。对于默认配置的服务器，数据库将安全地自动升级。如果您在基础设施中为该数据库设置了自定义配置，可以手动执行此升级。
*   连接：
    *   现在可以在值面板中显示更大尺寸的文本文件（通过使用 sqlTextPreviewMaxLength 参数）；
    *   增加了对自定义日志配置的支持。可以使用外部配置文件替代默认配置。

### 旧版本的 CloudBeaver

您可以在 CloudBeaver 维基上找到关于早期版本的信息：[https://github.com/dbeaver/cloudbeaver/wiki/Releases](https://github.com/dbeaver/cloudbeaver/wiki/Releases)。