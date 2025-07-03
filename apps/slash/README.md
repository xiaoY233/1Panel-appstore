# 斜杠

![logo](./resources/logo.png)

**Slash** 是一个开源的、可自行托管的书签和链接分享平台。它允许你使用标签来组织链接，并通过自定义的缩短链接来分享。Slash 还支持团队共享链接库，以便于协作。

[![Discord](https://img.shields.io/badge/discord-chat-5865f2?logo=discord&logoColor=f5f5f5)](https://discord.gg/QZqUuUAhDV) [![Docker pull](https://img.shields.io/docker/pulls/yourselfhosted/slash.svg)](https://hub.docker.com/r/yourselfhosted/slash) [![GitHub stars](https://img.shields.io/github/stars/boojack/slash?logo=github)](https://github.com/boojack/slash/stargazers)

![demo](https://github.com/boojack/slash/raw/main/resources/demo.png)

## 功能

*   创建可自定义的 `/s/` 短链接，适用于任何 URL。
*   私密分享短链接或与团队成员分享。
*   查看链接流量和来源的分析数据
*   通过浏览器扩展轻松访问快捷方式
*   开源的自我托管解决方案

## 秒速使用 Docker 部署

```bash
docker run -d --name slash -p 5231:5231 -v ~/.slash/:/var/opt/slash yourselfhosted/slash:latest
```

了解更多，请参阅 [使用 Docker 自主托管 Slash](https://github.com/boojack/slash/blob/main/docs/install.md)。

## 浏览器扩展程序

Slash 提供了一个浏览器扩展程序，帮助你在搜索栏中使用快捷键跳转到相应的 URL。

![browser-extension-example](https://github.com/boojack/slash/raw/main/resources/browser-extension-example.png)

了解更多，请参阅 [Slash 浏览器扩展程序](https://github.com/boojack/slash/blob/main/docs/install-browser-extension.md) 。