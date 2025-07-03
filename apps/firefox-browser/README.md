![](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/firefox-logo.png)

[Firefox](https://www.mozilla.org/en-US/firefox/) 浏览器，也称为 Mozilla Firefox 或简称为 Firefox，是由 Mozilla 基金会和其子公司 Mozilla Corporation 开发的一款免费开源的网页浏览器。Firefox 使用 Gecko 布局引擎来渲染网页，该引擎实现了当前和预期的网页标准。

## 支持的架构

我们使用 Docker 清单来实现多平台意识。更多信息请参阅 Docker [此处](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) 和我们的公告 [此处](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/) 。

简单地拉取 `lscr.io/linuxserver/firefox:latest` 应该可以检索到适合您架构的正确镜像，但您也可以通过标签拉取特定的架构镜像。

此镜像支持的架构如下：

| 架构 | 可用 | 标签 |
| --- | --- | --- |
| x86-64 | ✅ | amd64-<版本标签> |
| arm64 | ✅ | arm64v8-<版本标签> |
| armhf | ❌ |  |

## 应用设置

该应用可通过以下链接访问：

*   [http://yourhost:3000/](http://yourhost:3000/)
*   [https://yourhost:3001/](https://yourhost:3001/)