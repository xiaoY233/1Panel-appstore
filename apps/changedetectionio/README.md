## 网站变更检测，库存监控及通知。

***检测网站内容变化并执行有意义的操作——通过 Discord、邮件、Slack、Telegram、API 调用等多种方式触发通知。***

*主动管理您的数据生活。*

[![Self-hosted web page change monitoring](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot.png "Self-hosted web page change monitoring")](https://changedetection.io?src=github)

[![Release Version](https://img.shields.io:/github/v/release/dgtlmoon/changedetection.io?style=for-the-badge)](https://github.com/dgtlmoon/changedetection.io/releases) [![Docker Pulls](https://img.shields.io/docker/pulls/dgtlmoon/changedetection.io?style=for-the-badge)](https://hub.docker.com/r/dgtlmoon/changedetection.io) [![License](https://img.shields.io/github/license/dgtlmoon/changedetection.io.svg?style=for-the-badge)](https://github.com/dgtlmoon/changedetection.io/blob/master/LICENSE.md)

![changedetection.io](https://github.com/dgtlmoon/changedetection.io/actions/workflows/test-only.yml/badge.svg?branch=master)

[**没时间？让我们为您托管！试用我们的每月 8.99 美元订阅服务——使用我们的代理服务器并获得支持！**](https://changedetection.io)， *价格仅为其他网站变更监控服务的一半！*

*   包含 Chrome 浏览器。
*   无需注册，快速设置。
*   立即开始观看并接收网站更改通知。

### 使用视觉选择工具针对网页的特定部分进行操作。

连接到 [playwright 内容获取器](https://github.com/dgtlmoon/changedetection.io/wiki/Playwright-content-fetcher)时可用（作为我们订阅服务的一部分提供）

[![Self-hosted web page change monitoring context difference ](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/visualselector-anim.gif "Self-hosted web page change monitoring context difference ")](https://changedetection.io?src=github)

### 轻松查看更改内容，按词、行或个别字符进行检查。

[![Self-hosted web page change monitoring context difference ](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot-diff.png "Self-hosted web page change monitoring context difference ")](https://changedetection.io?src=github)

### 执行交互式浏览器步骤

填写文本框、点击按钮等，设置您的更改检测场景。

使用**浏览器步骤**配置，在进行变更检测之前添加基本步骤，例如登录网站、将产品添加到购物车、接受 Cookie 登录、输入日期并精炼搜索。

[![Self-hosted web page change monitoring context difference ](docs/browsersteps-anim.gif "Website change detection with interactive browser steps, login, cookies etc")](https://changedetection.io?src=github)

运行完**浏览器步骤**后，然后访问**视觉选择器**标签以精炼您感兴趣的内容。需要启用 Playwright。

### 示例使用场景

*   产品和服务的价格发生变化
*   *缺货通知*和*库存恢复通知*
*   监控和跟踪 PDF 文件的变化，了解 PDF 文件何时进行了文本修改。
*   政府部门更新（更改通常仅在其网站上）
*   新软件发布、安全公告（当你不在他们的邮件列表中时）
*   有变动的节日
*   Discogs 补货提醒和监控
*   房地产列表变动
*   抢先知道你喜爱的威士忌打折，或是在别人之前获悉其他特别优惠
*   政府网站上的新冠疫情相关新闻
*   他们网站上的大学/组织新闻
*   检测和监控 JSON API 响应的变化
*   JSON API 监控和告警
*   法律及其他文档中的变更
*   通过通知触发 API 调用，当网站上出现特定文本时
*   使用 JSON 过滤器和 JSON 通知将 API 粘合在一起
*   根据网页内容的变更创建 RSS 订阅源
*   监控 HTML 源代码以防止意外更改，加强你的 PCI 合规性
*   你有一份非常敏感的 URL 列表需要监控，你*不*想使用付费替代方案。（记住， *你*就是产品）
*   当某些关键词出现在 Twitter 搜索结果中时收到通知
*   主动搜索职位信息，当公司更新其招聘页面或在求职网站中出现关键词时收到通知
*   当 Bamboo HR 和其他招聘平台上新职位开放时获取通知
*   网站篡改监控
*   宝可梦卡库存追踪器 / 宝可梦 TCG 追踪器

*需要支持 JavaScript 的实际 Chrome 运行器吗？我们支持通过 WebDriver 和 Playwright 获取数据！*

#### 主要功能

*   包含多种触发过滤器，如“文本触发”，“通过选择器移除文本”，“忽略文本”，“提取文本”，还支持正则表达式！
*   使用 xPath 和 CSS 选择器定位目标元素，使用 JSONPath 或 jq 轻松监控复杂 JSON
*   在快速非 JS 模式和基于 Chrome JS 的“fetchers”之间切换
*   监控 PDF 文件中的更改（监控 PDF 中的文本更改，同时监控 PDF 文件大小和校验和）
*   轻松指定检查站点的频率
*   在提取文本前执行 JS（适用于登录操作，请参阅 UI 中的示例！）
*   覆盖请求头，指定 `POST` 或 `GET` 及其他方法
*   使用“视觉选择器”来帮助目标特定元素
*   每项监控配置代理
*   检测到网页更改时，随通知发送屏幕截图

我们推荐并使用 Bright Data 全球代理服务，通过我们的注册链接，Bright Data 将为您提供最高 100 美元的首次存款匹配。

请给这个项目点个星标🌟，帮助它成长！\[https://github.com/dgtlmoon/changedetection.io/\](https://github.com/dgtlmoon/changedetection.io/)

## 安装

### Docker

使用 Docker Compose，只需克隆这个仓库并...

```bash
$ docker-compose up -d
```

Docker 独立版本

```bash
$ docker run -d --restart always -p "127.0.0.1:5000:5000" -v datastore-volume:/datastore --name changedetection.io dgtlmoon/changedetection.io
```

\`:latest\` 标签是我们最新的稳定版本，\`:dev\` 标签是我们的尖端 \`master\` 分支。

替代的 Docker 仓库位于 ghcr - [ghcr.io/dgtlmoon/changedetection.io](https://ghcr.io/dgtlmoon/changedetection.io)

### Windows

请参阅 wiki 中的安装说明 [https://github.com/dgtlmoon/changedetection.io/wiki/Microsoft-Windows](https://github.com/dgtlmoon/changedetection.io/wiki/Microsoft-Windows)

### Python Pip

请访问我们的 PyPI 页面 [https://pypi.org/project/changedetection.io/](https://pypi.org/project/changedetection.io/)

```bash
$ pip3 install changedetection.io
$ changedetection.io -d /path/to/empty/data/dir -p 5000
```

然后访问 [http://127.0.0.1:5000](http://127.0.0.1:5000)，您现在应该可以访问 UI 了。

*现在支持每个站点配置使用内置的快速 HTTP 获取器，或者使用基于 Chrome 的获取器来监控 JavaScript 网站！*

## 更新 changedetection.io

### Docker

```
docker pull dgtlmoon/changedetection.io
docker kill $(docker ps -a -f name=changedetection.io -q)
docker rm $(docker ps -a -f name=changedetection.io -q)
docker run -d --restart always -p "127.0.0.1:5000:5000" -v datastore-volume:/datastore --name changedetection.io dgtlmoon/changedetection.io
```

### docker-compose

```bash
docker-compose pull && docker-compose up -d
```

参见维基以获取更多信息 [https://github.com/dgtlmoon/changedetection.io/wiki](https://github.com/dgtlmoon/changedetection.io/wiki)

## Filters

内置支持 XPath、JSONPath、jq 和 CSS！您可以根据需要进行精确匹配，使用来自各种 XPath 元素查询创建工具导出的 XPath。 （我们支持 LXML 的 `re:test`、`re:match` 和 `re:replace`。）

## Notifications

ChangeDetection.io 通过 [apprise](https://github.com/caronc/apprise) 库支持大量通知（包括电子邮件、office365、自定义 API 等），当检测到网页发生变化时会发送通知。只需在“*\[编辑\]*”标签页中设置一个或多个通知 URL。

仅作一些示例

```
discord://webhook_id/webhook_token
flock://app_token/g:channel_id
gitter://token/room
gchat://workspace/key/token
msteams://TokenA/TokenB/TokenC/
o365://TenantID:AccountEmail/ClientID/ClientSecret/TargetEmail
rocket://user:password@hostname/#Channel
mailto://user:pass@example.com?to=receivingAddress@example.com
json://someserver.com/custom-api
syslog://
```

[以及列表中的其他一切！](https://github.com/caronc/apprise#popular-notification-services)

![Self-hosted web page change monitoring notifications](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot-notifications.png "Self-hosted web page change monitoring notifications")

现在你还可以自定义通知内容，并使用 [Jinja2 模板](https://jinja.palletsprojects.com/en/3.0.x/templates/) 来设置其标题和正文！

## JSON API 监控

通过使用 JSONPath 或 jq 过滤、解析和重组 JSON，来检测 JSON API 中的变化和监控数据。

![image](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/json-filter-field-example.png)

这将重新解析 JSON 并对文本进行格式化，使监控和检测 JSON API 结果中的变化变得极其简单

![image](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/json-diff-example.png)

### JSONPath 或 jq？

对于更复杂的 JSON 数据解析、过滤和修改，推荐使用 jq，因为它内置了操作符和函数。更多具体信息请参阅\[jq 文档\](#0)。

jq 的一大优势是你可以使用逻辑来过滤 JSON 数据，例如只显示值大于/小于等条件的数据项。

更多详细信息和示例请参阅维基页面\[https://github.com/dgtlmoon/changedetection.io/wiki/JSON-Selector-Filter-help\](#0)

### 解析嵌入在 HTML 中的 JSON 数据！

启用 `json:` 或 `jq:` 过滤器后，你甚至可以自动提取并解析 HTML 页面中的嵌入 JSON！这对于基于 JSON 构建内容的网站非常有用，比如许多电子商务网站。

```
<html>
...
<script type="application/ld+json">

{
   "@context":"http://schema.org/",
   "@type":"Product",
   "offers":{
      "@type":"Offer",
      "availability":"http://schema.org/InStock",
      "price":"3949.99",
      "priceCurrency":"USD",
      "url":"https://www.newegg.com/p/3D5-000D-001T1"
   },
   "description":"Cobratype King Cobra Hero Desktop Gaming PC",
   "name":"Cobratype King Cobra Hero Desktop Gaming PC",
   "sku":"3D5-000D-001T1",
   "itemCondition":"NewCondition"
}
</script>
```

`json:$..price` 或 `jq:..price` 会返回 `3949.99`，或者你可以提取整个结构（使用 JSONpath 测试网站进行验证）

该应用还支持通知你它可以自动跟踪这些信息

## 代理配置

参见维基 [https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration](https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration)，我们还支持在可能的情况下使用 [BrightData 代理服务](https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration#brightdata-proxy-support)

## Raspberry Pi 支持吗？

Raspberry Pi 和 linux/arm/v6、linux/arm/v7、arm64 设备都支持！参见维基 [以获取详细信息](https://github.com/dgtlmoon/changedetection.io/wiki/Fetching-pages-with-WebDriver)

## API 支持

支持通过我们的 API 管理网站监控列表 [via our API](https://changedetection.io/docs/api_v1/index.html)

## 支持我们

您是否利用 changedetection.io 来赚钱？它是否为您节省了时间或金钱？是否让您的生活更加轻松或减少压力？请记住，我们在编写此软件时本应从事有偿工作，我们也需要购买食物和支付房租，就像您一样。

首先，考虑订阅一个 [change detection 月度订阅 - 无限次检查和监控](https://changedetection.io?src=github) ，即使您不使用它，您仍然会获得帮助项目的温暖感觉。（谁知道呢，您可能真的会用到它！）

或直接通过 PayPal 捐赠金额[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate/?hosted_button_id=7CP6HR9ZCNDYJ)

或 BTC `1PLFN327GyUarpJd7nVe7Reqg9qHx5frNn`

![Support us!](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/btc-support.png)

## 商业支持

我提供商业支持，此软件被网络安全、航空航天、数据科学和数据记者等专业人士依赖，如有任何咨询，请联系 [dgtlmoon@gmail.com](mailto:dgtlmoon@gmail.com)，我很乐意与贵组织合作，进一步探索 changedetection.io 的可能性