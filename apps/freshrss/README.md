# FreshRSS

FreshRSS 是一个自托管的 RSS 聚合器。

它轻量、易用、强大且可定制。支持多用户使用，并具备匿名阅读模式和自定义标签功能。提供 API 用于（移动）客户端，还支持 [命令行接口](https://github.com/FreshRSS/FreshRSS/blob/edge/cli/README.md)。

通过 [WebSub](https://freshrss.github.io/FreshRSS/en/users/WebSub.html) 标准，FreshRSS 能够从兼容的来源（如 [Friendica](https://friendi.ca)、[WordPress](https://wordpress.org/plugins/pubsubhubbub/)、Blogger、Medium 等）接收即时推送通知。

FreshRSS 原生支持基于 [XPath](https://www.w3.org/TR/xpath-10/) 的 [Web 抓取](https://freshrss.github.io/FreshRSS/en/users/11_website_scraping.html)，适用于没有提供 RSS / Atom 订阅的网站。同时支持 JSON 文档解析。

FreshRSS 还提供了通过 HTML、RSS 和 OPML [重新分享文章的功能](https://freshrss.github.io/FreshRSS/en/users/user_queries.html)。

支持多种 [登录方法](https://freshrss.github.io/FreshRSS/en/admins/09_AccessControl.html)：Web 表单（包含匿名选项）、HTTP 身份验证（兼容代理委托）、OpenID Connect。

此外，FreshRSS 还支持 [扩展](https://github.com/FreshRSS/FreshRSS#extensions) 以便进行更多调整。

- 官方网站: <https://freshrss.org>
- 演示: <https://demo.freshrss.org>