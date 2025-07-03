# WeekToDo | FOSS 极简主义周计划应用

* * *

![GitHub all releases](https://img.shields.io/github/downloads/zuntek/weektodoweb/total) [![vue3](https://img.shields.io/badge/vue-3.x-brightgreen.svg)](https://vuejs.org/)

WeekToDo 是一款注重隐私的免费极简主义周计划应用。您可以使用待办事项列表和日历来安排任务和项目。适用于 Windows、Mac、Linux 或在线使用。

![Logo](https://weektodo.me/weektodo-preview.webp)

## 功能

*   跨平台
*   明/暗模式切换
*   自定义待办事项列表
*   拖放
*   多语言
*   子任务
*   Markdown 支持
*   可定制的用户界面
*   本地存储
*   任务颜色
*   任务时间
*   重复任务
*   通知与提醒

## 路线图

*   触摸模式
    
*   移动版本
    
*   设备间同步
    
*   工作区
    
*   主题
    

## 安装

### 下载安装程序

[Windows / Linux / macOS](https://github.com/zuntek/weektodoweb/releases/latest)

### 外部存储

#### Windows

[Uptodown](https://weektodo.uptodown.com/windows)

#### macOS

[Macupdate](https://www.macupdate.com/app/mac/63506/weektodo)

#### Linux

Snapd 可以从命令行安装：

```bash
sudo apt update
sudo apt install snapd
```

要安装 WeekToDo，只需使用以下命令：

```bash
sudo snap install weektodo
```

## 从源代码构建和运行

如果你想了解 WeekToDo 的工作原理或调试某个问题，你需要获取源代码、构建并本地运行它。

### 安装前置条件

你需要安装 git，以及最新版本的 Node.JS（目前推荐使用 v16.X），Yarn 和 Electron。

```
git clone https://github.com/manuelernestog/weektodo
cd weektodo
yarn install
yarn run serve // to run web version
yarn run electron:serve // to run native version
```

## 贡献

你可以通过多种方式支持这个项目：

### 捐赠

[https://weektodo.me/support-us](https://weektodo.me/support-us)

### 分享

*   [Facebook](https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fweektodo.me%2F)
*   [Twitter](https://twitter.com/intent/tweet?url=https%3A%2F%2Fweektodo.me%2F&text=)
*   [Linkedin](https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fweektodo.me%2F&title=)

### 评价应用

*   [ProductHunt](https://www.producthunt.com/posts/weektodo)
*   [AlternativeTo](https://alternativeto.net/software/weektodo/about/)
*   [SassHub](https://www.saashub.com/weektodo-reviews/new)

### 翻译

目前系统支持多种语言，您可以纠正任何错误，或者如果您使用的语言尚未包含，可以添加您的语言。

您可以在[这里](src/assets/languages/en.json/)找到包含所有使用词汇的英文基础文件。

要添加新语言，请克隆仓库并创建一个新的翻译文件，该文件应基于 `translations/en.json`，并根据[语言代码](https://gist.github.com/Josantonius/b455e315bc7f790d14b136d61d9ae469)命名文件。

如果这太困难，您可以下载[此文件](src/assets/languages/en.json/) ，进行翻译后，将文件发送到邮箱 [contact@weektodo.me](mailto:contact@weektodo.me)。

## 贡献

Weektodo 是开源项目。欢迎提交拉取请求和贡献！有三种贡献方式：选择一个已被标记为 `accepted` 的 [bug 报告](https://github.com/manuelernestog/issues?q=is%3Aopen+is%3Aissue+label%3Abug) 或 [功能建议](https://github.com/manuelernestog/issues?q=is%3Aissue+is%3Aopen+label%3Afeature) 并开始参与。

请阅读 [Contributing.md](https://github.com/manuelernestog/weektodo/blob/main/CONTRIBUTING.md) 以获取更多信息。

## Author

*   [Manuel Ernesto Garcia](https://manuelernestogr.bio.link/)

## 贡献者

[![](https://contrib.rocks/image?repo=manuelernestog/weektodo)](https://github.com/manuelernestog/weektodo/graphs/contributors)

使用了 [contrib.rocks](https://contrib.rocks) 制作。