# cup

Cup 是检查容器镜像更新最简单的方法.

![https://cdn.jsdelivr.net/gh/sergi0g/cup@main/screenshots/web_dark.png](https://cdn.jsdelivr.net/gh/sergi0g/cup@main/screenshots/web_dark.png)

### 特色✨
- 速度超快。Cup 充分利用了您的 CPU 资源，并经过高度优化，带来闪电般的速度。在我的 Raspberry Pi 5 上，58 张图片的读取仅用了 3.7 秒！
- 支持大多数注册中心，包括 Docker Hub、ghcr.io、Quay、lscr.io 甚至 Gitea（或衍生产品）
- 不会耗尽任何速率限制。这正是我创建 Cup 的初衷。我觉得这个功能现在尤其重要，因为Docker Hub 正在降低未经身份验证用户的拉取限制。
- 漂亮的 CLI 和 Web 界面，可随时检查您的容器。
- 二进制文件非常小巧！撰写本文时，它只有 5.4 MB。无需再为如此简单的程序拉取 100 多 MB 的 Docker 镜像。
- CLI 和 Web 界面均提供 JSON 输出，方便您将 Cup 连接到集成。它易于解析，并且可以轻松设置 Webhook 和美观的仪表板！

### 文档📘
看看https://cup.sergi0g.dev/docs！

### 限制

```
Cup 仍在开发中。它可能没有其他替代品那么多功能。如果其中某个功能对您来说非常重要，请考虑使用其他工具。

Cup 无法直接触发您的集成。如果您希望自动触发，请使用 What's up Docker。Cup 的设计初衷很简单。数据就在那里，您可以自行检索（例如，通过cup check -rcronjob 运行或定期/api/v3/json从服务器请求 URL）。
```