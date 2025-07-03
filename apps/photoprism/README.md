# PhotoPrism：用图片浏览你的生活

[![License: AGPL](https://img.shields.io/badge/license-AGPL-blue.svg)](https://docs.photoprism.app/license/agpl/) [![GitHub contributors](https://img.shields.io/github/contributors/photoprism/photoprism.svg)](https://www.photoprism.app/about/team) [![Documentation](https://img.shields.io/badge/read-the%20docs-4aa087.svg)](https://docs.photoprism.app/) [![Community Chat](https://img.shields.io/badge/chat-on%20gitter-4aa087.svg)](https://link.photoprism.app/chat) [![GitHub Discussions](https://img.shields.io/badge/ask-%20on%20github-4d6a91.svg)](https://link.photoprism.app/discussions) [![Mastodon](https://dl.photoprism.app/img/badges/badge-mastodon.svg)](https://floss.social/@photoprism) [![Twitter](https://dl.photoprism.app/img/badges/badge-twitter.svg)](https://link.photoprism.app/twitter)

PhotoPrism® 是一个基于去中心化网络的 AI 助力照片应用。它利用最新技术自动标记和查找图片，不会打扰到你。你可以在家、私有服务器或云端运行它。

![](https://dl.photoprism.app/img/ui/desktop-1000px.jpg)

为了给你一个初步的印象，你可以尝试我们的 [公共演示](https://try.photoprism.app/) 。请注意不要上传任何私人图片。

## 功能概览

**我们的使命是提供最用户友好且注重隐私的解决方案，帮助您整理和访问照片。** 这就是为什么 PhotoPrism 从头开始构建，以便在您需要的任何地方运行，同时不牺牲自由、隐私或功能：

*   浏览[所有照片](https://docs.photoprism.app/user-guide/organize/browse/)和[视频](https://try.photoprism.app/library/videos) ，无需担心 [RAW 转换、重复文件或视频格式](https://docs.photoprism.app/user-guide/settings/library/)
*   使用[强大的搜索过滤器](https://try.photoprism.app/library/browse?view=cards&q=flower%20color%3Ared)轻松找到特定的照片
*   识别[家人和朋友的脸](https://try.photoprism.app/library/people)
*   基于图片内容和位置的自动分类
*   通过在相册和搜索结果中悬停来播放
*   由于用户界面是一个渐进式网络应用（Progressive Web App），它提供了类似原生应用的体验，您可以在所有主要操作系统的主屏幕上方便地安装它
*   包含四张高分辨率的世界地图，帮助您回忆起最喜爱的旅行
*   元数据从 Exif、XMP 以及其他来源如 Google Photos 中提取并合并
*   还可以搜索更多的图像属性，如[颜色](https://try.photoprism.app/library/browse?view=cards&q=color:red) 、 [色度](https://try.photoprism.app/library/browse?view=cards&q=mono%3Atrue)和[质量](https://try.photoprism.app/library/review)
*   使用 [PhotoSync](https://link.photoprism.app/photosync) 可以在后台安全备份 iOS 和 Android 手机
*   像 Microsoft 的 Windows 资源管理器和 Apple 的 Finder 这样的 WebDAV 客户端可以直接[连接到 PhotoPrism](https://docs.photoprism.app/user-guide/sync/webdav/)，允许您像操作本地文件一样从计算机中打开、编辑和删除文件

完全自筹资金且独立运作，我们承诺不会出售您的数据，并且会始终对我们的软件和服务保持透明。除非您有意将文件上传到他们的服务，否则您的数据绝不会与 Google、Amazon、Microsoft 或 Apple 共享。 🔒

## 快速入门

![](https://www.photoprism.app/user/pages/01.home/03._screenshots/iphone-maps-hybrid-540px.png)

您可以访问 [docs.photoprism.app](https://www.photoprism.app/get) 获取我们自托管的 [社区版](https://www.photoprism.app/get) 的逐步安装说明 - 您只需要一个 Web 浏览器和 [Docker](https://docs.docker.com/get-docker/) 即可运行服务器。该软件适用于 Mac、Linux 和 Windows。

稳定版本和开发预览已经整合成一个针对 64 位 AMD、Intel 和 ARM 处理器的 [多架构镜像](https://link.photoprism.app/docker-hub) 。这意味着，Raspberry Pi 3 / 4 的用户可以从同一个仓库拉取 相同的镜像，享受完全相同的功能，并且可以遵循常规的 安装说明[在浏览完一份简短的先决条件列表](https://docs.photoprism.app/getting-started/docker-compose/)[后](https://docs.photoprism.app/getting-started/raspberry-pi/) 。

现有用户建议根据我们提供的示例更新您的 `docker-compose.yml` 配置，这些示例可在[下载](https://dl.photoprism.app/docker/) 。

## 支持我们的使命 💎

**PhotoPrism 完全由自身运营并保持独立。** 您的[持续支持](https://link.photoprism.app/membership)帮助我们向公众提供更多的功能，发布[定期更新](https://www.photoprism.app/oss/faq#what-functionality-is-generally-available) ，并保持独立！

我们的会员享有额外功能，包括访问[互动世界地图](https://www.photoprism.app/kb/personal) ，并且可以加入我们的私人聊天室与[我们的团队联系](https://www.photoprism.app/about/team) 。我们目前有以下会员选项：

*   您可以在我们的网站[直接注册](https://link.photoprism.app/membership) ，并通过 Stripe 使用信用卡或 SEPA 支付，因此无需[链接外部账户](https://www.photoprism.app/kb/activation) ，并且可以随时轻松升级或降级
*   或者，您还可以通过 [Patreon](https://link.photoprism.app/patreon) 使用 PayPal，以及其他货币，并可以选择按月或按年付费

如果您目前通过 [GitHub Sponsors](https://link.photoprism.app/sponsor) 支持我们，您也可以在我们的网站[注册](https://my.photoprism.app/register) ，并使用*激活 GitHub Sponsors 会员按钮链接您的账户。有关此功能以及如何[链接您的 Patreon 账户](https://www.patreon.com/pledges)的详细信息，请参阅我们的[激活指南](https://www.photoprism.app/kb/activation) 。*

您可以联系我们提出更改请求、会员问题或商业合作。

查看会员常见问题 › 注册 ›

### 为什么您的支持很重要

*   您的持续支持有助于我们提供定期更新并保持独立，从而实现我们的使命并保护您的隐私
*   持续的资金支持对于快速推出您和其他社区成员所请求的新功能至关重要
*   作为自筹资金且独立的项目，我们可以向您保证，我们绝不会出售您的数据，并且我们将始终对我们的软件和服务保持透明

如果您喜欢这个项目，请也给它点个[星](https://github.com/photoprism/photoprism/stargazers)在 GitHub 上。这将为您提供额外的动力，继续前进。

**向所有当前和过去的赞助者表示衷心的感谢，他们的慷慨支持对于项目的成功至关重要！**

[查看赞助商 ›](https://github.com/photoprism/photoprism/blob/develop/SPONSORS.md) [查看致谢 ›](https://docs.photoprism.app/credits/)

## 获取支持

访问 [docs.photoprism.app/user-guide](https://docs.photoprism.app/user-guide/) 以了解如何 [同步](https://docs.photoprism.app/user-guide/sync/webdav/) 、 [组织](https://docs.photoprism.app/user-guide/library/)和 [分享](https://docs.photoprism.app/user-guide/share/)您的照片。如果您需要帮助在家中安装我们的软件，欢迎您在 [GitHub 讨论区](https://link.photoprism.app/discussions) 发布问题，或在我们的 [社区聊天](https://link.photoprism.app/chat) 中提问。我们提供的 [故障排除清单](https://docs.photoprism.app/getting-started/troubleshooting/) 可以快速诊断并解决常见问题。符合条件的 [会员](https://link.photoprism.app/membership) 也可以通过电子邮件向我们寻求技术支持和建议。

## 即将推出的功能和增强

我们的 [项目路线图](https://link.photoprism.app/roadmap) 展示了正在进行中的任务以及即将实现的功能。欢迎您为喜欢的想法点赞，这样我们就能知道哪些功能最受欢迎。

请注意，我们实行零错误政策，并尽力在用户需要支持或有其他问题时帮助他们。然而，这需要付出代价，因为我们无法为新功能提供确切的发布日期。我们的团队收到的请求比能实现的多得多，因此我们想强调的是，我们并没有义务实现您所请求的功能、增强或任何其他更改。不过，我们非常重视您的反馈，并会仔细考虑所有请求。

**由于持续的资金支持是快速发布新功能的关键，我们鼓励您通过[成为赞助者](https://link.photoprism.app/sponsor)或购买[商业许可](https://www.photoprism.app/teams)来支持我们的使命。最终，这对产品和社区是最好的。**

## GitHub Issues ⚠️

我们诚恳地请求您不要通过 GitHub Issues 报告错误，除非您确定找到了一个完全可复现且之前未报告的问题，必须直接在应用中修复。感谢您的慎重考虑！

*   在报告问题时，请务必包含您使用的软件版本以及其他有关环境的信息，如[浏览器、浏览器插件](https://docs.photoprism.app/getting-started/troubleshooting/browsers/) 、操作系统、 [存储类型](https://docs.photoprism.app/getting-started/troubleshooting/performance/#storage) 、 [内存大小](https://docs.photoprism.app/getting-started/troubleshooting/performance/#memory)和[处理器](https://docs.photoprism.app/getting-started/troubleshooting/performance/#server-cpu) 。
*   请注意，所有问题订阅者都会在 GitHub 上收到新评论的通知邮件，因此这些信息仅用于分享重要信息，而不应用于讨论、提问或表达个人意见。
*   如果您需要帮助，请联系[我们](https://www.photoprism.app/contact)或[社区成员](https://link.photoprism.app/discussions) ，可能是本地配置问题，或者是对软件使用方法的理解有误。
*   这将使我们的团队有机会改进文档并为您提供最佳支持，而不是处理模糊的或重复的错误报告，或因回复评论而触发大量通知

## 加入社区

关注我们在 [Twitter](https://link.photoprism.app/twitter) 上的动态，并加入[社区聊天](https://link.photoprism.app/chat) ，以获取最新更新，与其他用户交流，并讨论您的想法。我们的[行为准则](https://www.photoprism.app/code-of-conduct)解释了与社区成员互动时的“可为与不可为”。

如果您有任何想法或问题，随时可以联系我们，邮箱为 [hello@photoprism.app](mailto:hello@photoprism.app)。我们非常感谢您的反馈！由于收到的邮件量较大，我们的团队可能无法立即回复您。我们会尽最大努力在五个工作日内或更短时间内回复您。

## 每一份贡献都意义重大

我们欢迎任何形式的贡献，包括博客文章、教程、测试、编写文档和提交拉取请求。我们的《开发者指南》包含了你开始所需的所有信息。

* * *

*PhotoPrism® 是一个注册商标。使用我们提供的软件和服务，你同意遵守我们的《服务条款》、《隐私政策》和《行为准则》。文档在《知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议》下可用；可能还适用其他条款。*