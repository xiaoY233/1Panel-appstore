# 使用说明

**创建时需要手动连接容器终端执行命令启动服务，并创建管理员账户密码。**

容器管理功能页面，连接容器终端，执行以下命令

*   启动 SeaTable 服务

```
/shared/seatable/scripts/seatable.sh start
```

*   # 创建一个管理员帐户
    

```
/shared/seatable/scripts/seatable.sh superuser  
```

# 原始相关

* * *

## 简介

SeaTable 是类似于 Airtable 的电子表格/数据库。最初的想法是让人们在一个平台上管理不同种类的数据。内置的自动化规则、脚本和 API，使你无需编写代码或少量代码即可自动化数据处理。

核心功能包括：

*   支持协作编辑的电子表格界面
*   适用于移动系统的浏览器界面
*   单个基础中的无限行
*   在不同基础之间互联数据
*   无需编码自动处理数据
*   强大的 API 接口以及 SQL 接口
*   自托管，无 API 调用限制

## 历史

SeaTable 由 Seafile 团队（[https://github.com/haiwen/seafile](https://github.com/haiwen/seafile)）最初构建。最初的想法是为 Seafile 添加在线协作表格功能。后来发展成一个独立的项目。业务现在转移到 SeaTable GmbH。

## 如何安装 SeaTable

请查阅我们的手册：[https://manual.seatable.io](https://manual.seatable.io)

## Repositories

General

*   [Scripts examples](https://github.com/seatable/seatable-scripts-examples)：您可以添加以扩展 SeaTable 的示例背景脚本。
*   [插件模板](https://github.com/seatable/seatable-plugin-template) : 自定义 UI 插件的模板。

插件

*   [时间轴插件](https://github.com/seatable/seatable-plugin-timeline) : 在时间轴中显示记录。
*   [地图](https://github.com/seatable/seatable-plugin-map) : 在 Google 地图中显示记录。
*   [去重](https://github.com/seatable/seatable-plugin-deduplicate) : 检测重复记录。

## 软件组件

SeaTable 包含以下组件

*   dtable-web：用于管理表格的网站。
*   dtable-server：存储表格并提供协作功能。
*   [dtable-events](https://github.com/seatable/dtable-events): 背景维护任务
*   [seaf-server](https://github.com/haiwen/seafile): 存储附件（文件和图片）
*   [ccnet-server](https://github.com/haiwen/ccnet-server): 以后将被移除。
*   [thumbnail-server](https://github.com/seatable/seatable-thumbnail-server): 提供图片缩略图和其他静态内容

## 许可证

SeaTable 社区版的不同组件采用不同的许可证：

*   dtable-web: Apache License v2
*   dtable-events: Apache License v2
*   dtable-server: 专有许可
*   seaf-server: AGPLv3
*   thumbnail-server: Apache License v2

注：

*   源代码稍后将上传到 GitHub。如果你感兴趣，它们目前包含在 Docker 镜像中。

## 报告问题

请在论坛中报告问题：\[https://forum.seatable.io/\](https://forum.seatable.io/)