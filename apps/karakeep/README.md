# [![img](https://github.com/hoarder-app/hoarder/raw/main/screenshots/logo.png)](https://github.com/hoarder-app/hoarder/blob/main/screenshots/logo.png)

一款可自托管的书签应用程序，带有人工智能功能，适合数据囤积者使用。

> *karakeep（原名Hoarder） 是一个独立的非商业项目。它与 Hordr.app 或其所有者没有任何关联、支持或联系。*

[![主页截图](https://github.com/hoarder-app/hoarder/raw/main/screenshots/homepage.png?raw=true)](https://github.com/hoarder-app/hoarder/blob/main/screenshots/homepage.png?raw=true)

## 特征

- 🔗 为链接添加书签、做简单的笔记并存储图像和 PDF。
- ⬇️ 自动获取链接标题、描述和图像。
- 📋 将您的书签分类放入列表。
- 🔎 对存储的所有内容进行全文搜索。
- ✨ 基于 AI（又名 chatgpt）的自动标记。支持使用 ollama 的本地模型！
- 🎆 OCR 用于从图像中提取文本。
- 🔖 [Chrome 插件](https://chromewebstore.google.com/detail/hoarder/kgcjekpmcjjogibpjebkhaanilehneje)和[Firefox 插件](https://addons.mozilla.org/en-US/firefox/addon/hoarder/)可快速添加书签。
- 📱一个[iOS 应用程序](https://apps.apple.com/us/app/hoarder-app/id6479258022)和一个[Android 应用程序](https://play.google.com/store/apps/details?id=app.hoarder.hoardermobile&pcampaignid=web_share)。
- 📰 自动从 RSS 源中收集信息。
- 🔌 REST API。
- 🌐 多语言支持。
- 🖍️ 标记并存储您收藏的内容中的亮点。
- 🗄️ 整页存档（使用[monolith](https://github.com/Y2Z/monolith)）以防止链接腐烂。使用[youtube-dl](https://github.com/marado/youtube-dl)自动存档视频。
- ☑️批量操作支持。
- 🔐 SSO 支持。
- 🌙 支持暗黑模式。
- 💾 首先进行自我托管。
- [计划] 下载内容以供在移动应用程序中离线阅读。

**⚠️该应用程序正在大力开发中，还远未稳定。**

## 文档

- [安装](https://docs.hoarder.app/Installation/docker)
- [配置](https://docs.hoarder.app/configuration)
- [截图](https://docs.hoarder.app/screenshots)
- [安全注意事项](https://docs.hoarder.app/security-considerations)
- [发展](https://docs.hoarder.app/Development/setup)

## 演示

您可以通过[https://try.hoarder.app](https://try.hoarder.app/)访问演示。使用以下凭据登录：

```
email: demo@hoarder.app
password: demodemo
```

该演示包含一些内容，但为了防止滥用，它处于只读模式。

## 堆

- 用于 Web 应用的[NextJS 。使用应用路由器。](https://nextjs.org/)
- [Drizzle](https://orm.drizzle.team/)用于数据库及其迁移。
- [NextAuth](https://next-auth.js.org/)用于身份验证。
- [tRPC](https://trpc.io/)用于客户端->服务器通信。
- 用于抓取书签的[Puppeteer 。](https://pptr.dev/)
- [OpenAI](https://openai.com/)，因为人工智能现在非常热门。
- [Meilisearch](https://meilisearch.com/)提供全文搜索。

## 替代方案

- [memos](https://github.com/usememos/memos)：我喜欢 memos。它在我的家庭服务器上运行，是我最常用的自托管应用程序之一。但是，它不会存档或预览其中共享的链接。我只是在那里转储了很多链接，如果我能通过查看我的时间线来确定哪个链接是那个链接，我会很高兴。此外，考虑到我在那里转储的各种东西，如果它能对我保存在那里的东西进行某种自动标记，我会很高兴。这正是我试图用 Hoarder 解决的用例。
- [mymind](https://mymind.com/)：Mymind 是这个项目最接近的替代品，我从中汲取了很多灵感。不过它是一款商业产品。
- [raindrop](https://raindrop.io/)：一款精致的开源书签管理器，支持链接、图像和文件。不过它不能自托管。
- 书签管理器（主要侧重于书签链接）：
  - [Pocket](https://getpocket.com/)：Pocket 让我对稍后阅读应用的想法产生了浓厚的兴趣。我[经常](https://blog.mbassem.com/2019/01/27/favorite-articles-2018/)使用它。但是，我最近开始在家做实验，并开始痴迷于在家庭服务器中运行我的服务的想法。Hoarder 旨在成为第一个自托管应用。
  - [Linkwarden](https://linkwarden.app/)：一款开源自托管书签管理器，我在家里的实验室里运行过一段时间。它主要关注链接并支持协作收藏。
  - [Omnivore](https://omnivore.app/)：Omnivore 是一款非常酷的开源稍后阅读应用程序。不幸的是，它严重依赖于谷歌云基础设施，这使得自托管变得相当困难。他们发布了一篇关于如何运行最小 Omnivore 的[博客文章](https://docs.omnivore.app/self-hosting/self-hosting.html)，但缺少很多东西。自托管似乎并不是他们的首要任务，而这正是我关心的事情，所以我决定构建一个替代方案。
  - [Wallabag](https://wallabag.it/)：Wallabag 是一款成熟的开源稍后阅读应用程序，使用 php 编写，我认为它是 reddit 上对此类应用程序的普遍推荐。说实话，我没有真正尝试过，而且它的 UI 对我来说有点过时。老实说，它可能比这个应用程序更稳定、功能更齐全，但那有什么乐趣呢？
  - [Shiori](https://github.com/go-shiori/shiori)：Shiori 是一个用 Go 编写的开源袖珍克隆版。它满足所有要求，但没有我超级复杂的基于 AI 的标记功能。（开玩笑的，我是在决定构建自己的应用程序后才发现它的，所以我们就在这里🤷）。