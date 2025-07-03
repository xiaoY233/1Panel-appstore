# 使用说明

当完成部署初始化时，注意需要按照页面提示，

修改`config.ini.php`文件，将访问IP/域名加入白名单，或者取消白名单。

文件所在大致路径如下，注意按需修改

```
/opt/1panel/apps/local/matomo/matomo/data/web/config
```

# 原始相关

# Matomo（原名 Piwik）- matomo.org

[![Latest Stable Version](https://poser.pugx.org/matomo/matomo/v/stable)](https://matomo.org/download/) [![Latest Unstable Version](https://poser.pugx.org/matomo/matomo/v/unstable)](https://builds.matomo.org/) [![License](https://poser.pugx.org/piwik/piwik/license)](https://matomo.org/free-software/)

## 代码状态

[![Matomo Tests](https://github.com/matomo-org/matomo/actions/workflows/matomo-tests.yml/badge.svg)](https://github.com/matomo-org/matomo/actions/workflows/matomo-tests.yml) [![Percentage of issues still open](http://isitmaintained.com/badge/open/matomo-org/matomo.svg)](http://isitmaintained.com/project/matomo-org/matomo "Percentage of issues still open")

## 描述

Matomo 是领先的免费/开源分析平台。

Matomo 是一个功能齐全的 PHP MySQL 软件程序，你可以下载并安装在自己的服务器上。在五分钟安装过程结束后，你会得到一段 JavaScript 代码。只需将这段代码复制并粘贴到你希望跟踪的网站上，并实时访问你的分析报告。

Matomo 是 Google Analytics 的免费软件替代品，已经在超过 1,400,000 个网站上使用。内置隐私保护！

## 使命宣言

> “作为社区，创建一个国际领先的开源数字分析平台，让用户完全控制自己的数据。”

或者简单来说：

> « 解放网络分析 »

## 许可证

Matomo 采用 GPL v3（或更新版本）许可证，详见 [LICENSE](https://github.com/matomo-org/matomo/blob/5.x-dev/LICENSE)。

## 需求

*   PHP 7.2.5 或更高版本
*   MySQL 5.5 或更高版本，或 MariaDB
*   PHP 扩展 pdo 和 pdo\_mysql，或 MySQLi 扩展
*   Matomo 与操作系统 / 服务器无关

访问 [https://matomo.org/docs/要求/](https://matomo.org/docs/requirements/)。

## 安装 Matomo

*   [下载 Matomo](https://matomo.org/download/)
*   将 Matomo 上传到您的 Web 服务器
*   将浏览器指向目录
*   按照步骤操作
*   将给定的 javascript 代码添加到页面中
*   （您也可以通过启用插件 VisitorGenerator 生成假数据来进行实验）

访问 [https://matomo.org/docs/installation/](https://matomo.org/docs/installation/)。

(当使用 Matomo 进行开发时，您需要从 Git 仓库 [安装 Matomo](https://matomo.org/faq/how-to-install/faq_18271/))。

## 免费试用

如果您没有服务器或不想自行托管，可以使用我们的 Matomo 云合作伙伴服务（21 天免费试用）：[https://matomo.org/start-free-analytics-trial/](https://matomo.org/start-free-analytics-trial/)

## 在线演示

访问 Matomo 的在线演示，请访问 [demo.matomo.cloud](https://demo.matomo.cloud/)。

## 更新日志

要查看当前及过去版本中关闭的所有工单列表，请访问 [matomo.org/changelog/](https://matomo.org/changelog/)。要查看 Matomo 平台的技术更改列表，请访问 [developer.matomo.org/changelog](https://developer.matomo.org/changelog)。

## 参与进来！

我们致力于解放网络分析，提供一个免费的平台，用于简单的和高级的分析。Matomo 是由像你这样的几十个人共同构建的，我们需要你的帮助来使 Matomo 更好……为什么不在今天参与一个有意义的项目呢？\[了解如何为 Matomo 做贡献\]

## 翻译

我们的翻译由 [Weblate](https://hosted.weblate.org/engage/matomo/) 管理。

[![Translation Status](https://hosted.weblate.org/widgets/matomo/-/horizontal-auto.svg)](https://hosted.weblate.org/engage/matomo/)

## 质量保证

Matomo 项目使用了数千个单元测试和数百个自动集成测试、系统测试、JavaScript 测试和屏幕截图 UI 测试，这些测试在持续集成服务器上运行，作为其软件质量保证的一部分。 [了解更多](https://developer.matomo.org/guides/tests) 。

我们使用 [BrowserStack.com](https://www.browserstack.com/) 测试工具来帮助检查 Matomo 用户界面是否与多种浏览器兼容。

## 安全

Matomo 将安全视为首要任务。一旦发现潜在问题，我们会尽快验证、打补丁并发布修复。我们有一个漏洞赏金计划，鼓励研究人员发现并报告安全问题，并为此提供奖励。

\[了解更多\] 或访问我们的 \[HackerOne 平台\]。

## Matomo 的支持

对于 \[免费支持\]，请在我们的社区论坛发帖：\[forum.matomo.org\]

对于**专业付费支持** ，请购买 Matomo On-Premises 支持计划：\[matomo.org/support-plans\](matomo.org/support-plans)

## 联系

网站：\[matomo.org\](matomo.org)

关于我们：\[matomo.org/team/\](matomo.org/team/)

联系我们: [matomo.org/contact/](https://matomo.org/contact/)

## 更多信息

Matomo 与竞争对手有何不同之处:

*   您拥有自己的网站分析数据: 由于 Matomo 安装在您的服务器上，数据存储在您自己的数据库中，您可以使用强大的 Matomo 分析 API 获取所有统计数据。
    
*   Matomo 是一款自由软件，可以轻松配置以尊重访客的隐私。
    
*   现代、易于使用的用户界面：您可以完全自定义仪表板，拖放小部件等。
    
*   Matomo 的功能是内置在插件中的：您可以添加新功能并移除不需要的功能。您可以自己构建网络分析插件，或者聘请顾问将自定义功能集成到 Matomo 中。
    
*   活跃的国际开源社区，拥有超过 200,000 名活跃用户（跟踪更多网站！）
    
*   高级网络分析功能，如电子商务跟踪、目标跟踪、活动跟踪、自定义变量、电子邮件报告、自定义细分编辑器、地理位置、实时访问和地图， [以及其他更多功能！](https://matomo.org/feature-overview/)
    

更多文档和信息请参见 [https://matomo.org](https://matomo.org)。

我们共同打造世界上最优秀的开源分析平台！