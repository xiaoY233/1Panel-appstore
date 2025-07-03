# Web-Check

![](https://i.ibb.co/q1gZN2p/web-check-logo.png)
***任何网站的全面、按需开源情报***
**🌐 [web-check.xyz](https://web-check.xyz/)**

* * *

## 关于

了解给定网站的内部运作：发现潜在的攻击向量，分析服务器架构，查看安全配置，并了解该网站使用了哪些技术。

目前仪表板将显示：IP 信息、SSL 证书链、DNS 记录、Cookies、头部信息、域名信息、搜索爬取规则、页面映射、服务器位置、重定向记录、开放端口、 traceroute、DNS 安全扩展、站点性能、跟踪器、关联主机名、碳足迹。敬请期待，我会很快添加更多功能！

目标是帮助您轻松了解、优化和保护您的网站。

### 截图

[![Screenshot](https://raw.githubusercontent.com/Lissy93/web-check/master/.github/screenshots/web-check-screenshot7.png)](https://web-check.as93.net/)

### Live Demo

托管版本可访问：**[web-check.as93.net](https://web-check.as93.net)**

### 镜像

此仓库的源代码镜像到了 CodeBerg，地址为：**[codeberg.org/alicia/web-check](https://codeberg.org/alicia/web-check)**

### 动机

当你查看一个网站时，通常会先检查一些基本内容。比如：Whois 查询、SSL 证书链、DNS 记录、技术栈、安全协议、爬虫规则、站点地图、重定向、基本性能、开放端口、服务器信息等。这些信息大多可以通过一系列基本的 curl 命令或组合使用在线工具来获取。但把这些信息清晰地集中展示在一个地方会方便得多 :)

### 功能

#### 展开查看所有功能

请注意，此列表需要更新，自那以后已经添加了许多新的任务...

**IP 地址** ![](undefined?)

###### 描述

IP 地址任务涉及通过域名系统（DNS）解析将用户提供的 URL 映射为其对应的 IP 地址。IP 地址是互联网上每个设备的唯一标识符，与域名配对后，可以准确地路由在线请求和响应。

###### 使用案例

识别域名的 IP 地址在开源情报（OSINT）方面具有巨大价值。这些信息可以帮助构建目标网络架构的详细地图，确定服务器的物理位置，识别托管服务，甚至发现同一 IP 地址上托管的其他域名。在网络安全领域，它还有助于追踪攻击或恶意活动的来源。

###### 相关链接

*   [https://en.wikipedia.org/wiki/IP\_address](https://en.wikipedia.org/wiki/IP_address)
*   [https://tools.ietf.org/html/rfc791](https://tools.ietf.org/html/rfc791)
*   [https://www.cloudflare.com/learning/dns/what-is-dns/](https://www.cloudflare.com/learning/dns/what-is-dns/)
*   [https://www.whois.com/whois-lookup](https://www.whois.com/whois-lookup)

**SSL** ![](https://i.ibb.co/kB7LsV1/wc-ssl.png?)

###### 描述

SSL 任务涉及检查网站是否具有有效的安全套接字层（SSL）证书。SSL 是一种在网络计算机之间建立身份验证和加密连接的协议。它通常用于保护互联网上的通信，如网页浏览会话、电子邮件传输等。在这个任务中，我们会联系服务器并发起 SSL 握手。如果成功，我们将收集服务器提供的 SSL 证书的相关信息。

###### 用例

SSL 证书不仅提供了数据传输到和从网站的安全保障，还提供了有价值的开源情报（OSINT）数据。从 SSL 证书中可以获取的信息包括颁发机构、域名、有效期限，有时甚至包括组织详情。这些信息可以用于验证网站的真实性、了解其安全设置，甚至发现关联的子域名或其他服务。

###### 相关链接

*   [https://en.wikipedia.org/wiki/Transport\_Layer\_Security](https://en.wikipedia.org/wiki/Transport_Layer_Security)
*   [https://tools.ietf.org/html/rfc8446](https://tools.ietf.org/html/rfc8446)
*   [https://letsencrypt.org/docs/](https://letsencrypt.org/docs/)
*   [https://www.sslshopper.com/ssl-checker.html](https://www.sslshopper.com/ssl-checker.html)

**DNS 记录** ![](https://i.ibb.co/7Q1kMwM/wc-dns.png?)

###### 描述

DNS 记录任务涉及查询域名系统（DNS）以获取与目标域名相关的记录。DNS 是一个将人类可读的域名转换为计算机用于通信的 IP 地址的系统。存在多种类型的 DNS 记录，包括 A（地址）、MX（邮件交换）、NS（名称服务器）、CNAME（标准名称）和 TXT（文本）等。

###### 用例

提取 DNS 记录可以在开源情报（OSINT）调查中提供大量信息。例如，A 和 AAAA 记录可以揭示与域名相关的 IP 地址，可能揭示服务器的位置。MX 记录可以提供关于域名邮件服务提供商的线索。TXT 记录通常用于各种管理目的，有时可能会无意中泄露内部信息。了解域名的 DNS 设置也有助于理解其在线基础设施的构建和管理方式。

###### 有用链接

*   [https://en.wikipedia.org/wiki/List\_of\_DNS\_record\_types](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
*   [https://tools.ietf.org/html/rfc1035](https://tools.ietf.org/html/rfc1035)
*   [https://mxtoolbox.com/DNSLookup.aspx](https://mxtoolbox.com/DNSLookup.aspx)
*   [https://www.dnswatch.info/](https://www.dnswatch.info/)

**Cookies** ![](https://i.ibb.co/TTQ6DtP/wc-cookies.png?)

###### 描述

Cookies 任务涉及检查目标网站设置的 HTTP Cookies。Cookies 是网页浏览器在用户浏览网站时存储在用户计算机上的少量数据。它们包含特定于特定客户端和网站的少量数据，例如站点偏好、用户的会话状态或跟踪信息。

###### 用例

Cookies 在 OSINT 调查中提供了丰富的信息。它们可以揭示网站如何跟踪和与用户互动。例如，会话 Cookie 可以显示用户会话是如何管理的，而跟踪 Cookie 则可能暗示正在使用的跟踪或分析框架的类型。此外，检查 Cookie 的政策和实践可以提供有关网站安全设置和隐私法规合规性的见解。

###### 相关链接

*   [https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
*   [https://www.cookiepro.com/knowledge/what-is-a-cookie/](https://www.cookiepro.com/knowledge/what-is-a-cookie/)
*   [https://owasp.org/www-community/controls/SecureFlag](https://owasp.org/www-community/controls/SecureFlag)
*   [https://tools.ietf.org/html/rfc6265](https://tools.ietf.org/html/rfc6265)

**爬取规则** ![](https://i.ibb.co/KwQCjPf/wc-robots.png?)

###### 描述

爬取规则任务专注于从目标网站获取并解析 'robots.txt' 文件。这个文本文件是机器人排除协议（REP）的一部分，是一组用于规范机器人如何爬取网络、访问和索引内容以及向用户提供这些内容的网络标准。该文件指出了网站所有者不希望被网络爬虫机器人访问的网站部分。

###### 用例

'robots.txt' 文件可以为开源情报（OSINT）调查提供有价值的信息。它通常会披露站点所有者不希望被索引的目录和页面，可能是因为这些页面包含敏感信息。此外，它还可能揭示其他隐藏或未链接的目录的存在。另外，了解爬虫规则可能有助于了解网站的搜索引擎优化（SEO）策略。

###### 相关链接

*   [https://developers.google.com/search/docs/advanced/robots/intro](https://developers.google.com/search/docs/advanced/robots/intro)
*   [https://www.robotstxt.org/robotstxt.html](https://www.robotstxt.org/robotstxt.html)
*   [https://moz.com/learn/seo/robotstxt](https://moz.com/learn/seo/robotstxt)
*   [https://en.wikipedia.org/wiki/Robots\_exclusion\_standard](https://en.wikipedia.org/wiki/Robots_exclusion_standard)

**头部信息** ![](https://i.ibb.co/t3xcwP1/wc-headers.png?)

###### 描述

Headers 任务涉及提取和解释目标网站在请求-响应周期中发送的 HTTP 头部信息。HTTP 头部是在 HTTP 响应开始时或在实际数据之前发送的关键值对。头部信息包含处理正在传输的数据的重要指令，包括缓存策略、内容类型、编码、服务器信息、安全策略等。

###### 用例

在开源情报（OSINT）调查中，分析 HTTP 头部可以提供重要的见解。头部信息可以揭示特定的服务器配置、选择的技术、缓存指令以及各种安全设置。这些信息有助于确定网站的技术栈、服务器端的安全措施、潜在的漏洞以及一般的运营实践。

###### 相关链接

*   [https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
*   [https://tools.ietf.org/html/rfc7231#section-3.2](https://tools.ietf.org/html/rfc7231#section-3.2)
*   [https://www.w3schools.com/tags/ref\_httpheaders.asp](https://www.w3schools.com/tags/ref_httpheaders.asp)
*   [https://owasp.org/www-project-secure-headers/](https://owasp.org/www-project-secure-headers/)

**质量报告** ![](https://i.ibb.co/Kqg8rx7/wc-quality.png?)

###### 描述

Headers 任务涉及提取并解释目标网站在请求-响应周期中发送的 HTTP 头部信息。HTTP 头部是在 HTTP 响应开始时或在实际数据之前发送的关键值对。头部信息包含处理正在传输的数据的重要指令，包括缓存策略、内容类型、编码、服务器信息、安全策略等。

###### 应用场景

在 OSINT 调查中，分析 HTTP 头部可以提供重要的见解。头部信息可以揭示特定的服务器配置、选择的技术、缓存指令以及各种安全设置。这些信息有助于确定网站的基础技术栈、服务器端的安全措施、潜在的漏洞以及一般的运营实践。

###### 有用链接

*   [https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
*   [https://tools.ietf.org/html/rfc7231#section-3.2](https://tools.ietf.org/html/rfc7231#section-3.2)
*   [https://www.w3schools.com/tags/ref\_httpheaders.asp](https://www.w3schools.com/tags/ref_httpheaders.asp)
*   [https://owasp.org/www-project-secure-headers/](https://owasp.org/www-project-secure-headers/)

**服务器位置** ![](https://i.ibb.co/cXH2hfR/wc-location.png?)

###### 描述

服务器位置任务是根据服务器的 IP 地址确定托管网站的物理位置。地理位置数据通常包括服务器所在国家、地区，有时还包括城市。该任务还提供有关服务器位置国家的官方语言、货币和国旗等额外上下文信息。

###### 应用场景

在开源情报（OSINT）领域，服务器位置信息非常有价值。它可以提供服务器上数据可能受法律管辖的线索，这对于法律或调查情境中非常重要。服务器位置还可以暗示网站的目标受众，并揭示不一致之处，这些不一致可能表明使用了托管或代理服务来掩饰实际位置。

###### 相关链接

*   [https://en.wikipedia.org/wiki/Geolocation\_software](https://en.wikipedia.org/wiki/Geolocation_software)
*   [https://www.iplocation.net/](https://www.iplocation.net/)
*   [https://www.cloudflare.com/learning/cdn/glossary/geolocation/](https://www.cloudflare.com/learning/cdn/glossary/geolocation/)
*   [https://developers.google.com/maps/documentation/geolocation/intro](https://developers.google.com/maps/documentation/geolocation/intro)

**关联域名和主机名** ![](https://i.ibb.co/25j1sT7/wc-hosts.png?)

###### 描述

此任务涉及识别并列出与网站主域名相关的所有域名和子域名（主机名）。这个过程通常涉及 DNS 枚举，以发现任何关联的域名和主机名。

###### 使用案例

在开源情报（OSINT）调查中，了解目标在网络上的完整存在范围至关重要。关联域名可能会揭示相关项目、备份站点、开发/测试站点或与主站点相关的服务。这些有时可以提供额外信息或潜在的安全漏洞。一个全面的关联域名和主机名列表也可以概述组织的结构和在线足迹。

###### 相关链接

*   [https://en.wikipedia.org/wiki/Domain\_Name\_System](https://en.wikipedia.org/wiki/Domain_Name_System)
*   [https://resources.infosecinstitute.com/topic/dns-enumeration-pentest/](https://resources.infosecinstitute.com/topic/dns-enumeration-pentest/)
*   [https://subdomainfinder.c99.nl/](https://subdomainfinder.c99.nl/)
*   [https://securitytrails.com/blog/top-dns-enumeration-tools](https://securitytrails.com/blog/top-dns-enumeration-tools)

**重定向链** ![](https://i.ibb.co/hVVrmwh/wc-redirects.png?)

###### 描述

此任务追踪从原始 URL 到最终目标 URL 之间发生的 HTTP 重定向序列。HTTP 重定向是一种响应，其状态码建议客户端访问另一个 URL。重定向可能出于多种原因发生，例如 URL 规范化（将用户导向站点的 www 版本）、强制使用 HTTPS、URL 缩短，或转发用户到新的站点位置。

###### 应用场景

了解重定向链对于多个方面都至关重要。从安全角度来看，长且复杂的重定向链可能是潜在安全风险的迹象，例如链中的未加密重定向。此外，重定向会影响网站性能和 SEO，因为每次重定向都会增加额外的往返时间（RTT）。对于开源情报（OSINT），了解重定向链有助于识别不同域名之间的关系，或揭示使用某些技术和托管提供商的情况。

###### 相关链接

*   [https://developer.mozilla.org/en-US/docs/Web/HTTP/Redirections](https://developer.mozilla.org/en-US/docs/Web/HTTP/Redirections)
*   [https://en.wikipedia.org/wiki/URL\_redirection](https://en.wikipedia.org/wiki/URL_redirection)
*   [https://www.screamingfrog.co.uk/server-response-codes/](https://www.screamingfrog.co.uk/server-response-codes/)
*   [https://ahrefs.com/blog/301-redirects/](https://ahrefs.com/blog/301-redirects/)

**TXT 记录** ![](https://i.ibb.co/wyt21QN/wc-txt-records.png?)

###### 描述

TXT 记录是域名服务（DNS）记录的一种，提供文本信息给您域名之外的来源。它们可以用于多种目的，例如验证域名所有权、确保电子邮件安全，甚至防止未经授权对网站进行更改。

###### 应用场景

在开源情报（OSINT）的背景下，TXT 记录可以是一个有价值的信息来源。它们可能揭示有关域名电子邮件配置的细节，使用特定服务（如 Google Workspace 或 Microsoft 365）的情况，或已实施的安全措施（如 SPF 和 DKIM）。了解这些细节可以提供有关组织所使用的技术、电子邮件安全实践以及潜在漏洞的见解。

###### 有用链接

*   [https://www.cloudflare.com/learning/dns/dns-records/dns-txt-record/](https://www.cloudflare.com/learning/dns/dns-records/dns-txt-record/)
*   [https://en.wikipedia.org/wiki/TXT\_record](https://en.wikipedia.org/wiki/TXT_record)
*   [https://tools.ietf.org/html/rfc7208](https://tools.ietf.org/html/rfc7208)
*   [https://dmarc.org/wiki/FAQ](https://dmarc.org/wiki/FAQ)

**服务器状态** ![](https://i.ibb.co/V9CNLBK/wc-status.png?) **开放端口** ![](https://i.ibb.co/F8D1hmf/wc-ports.png?)

###### 描述

服务器上的开放端口是用于与客户端建立连接的通信端点。每个端口对应于特定的服务或协议，例如 HTTP（端口 80）、HTTPS（端口 443）、FTP（端口 21）等。可以使用端口扫描等技术来确定服务器上的开放端口。

###### 用例

在开源情报（OSINT）的背景下，了解服务器上哪些端口是开放的可以提供有关该服务器上运行的服务的重要信息。这些信息可用于理解该系统的潜在漏洞，或了解服务器提供的服务的性质。例如，一个开放了端口 22（SSH）的服务器可能用于远程管理，而开放了端口 443 的服务器则在提供 HTTPS 流量。

###### 相关链接

*   [https://www.netwrix.com/port\_scanning.html](https://www.netwrix.com/port_scanning.html)
*   [https://nmap.org/book/man-port-scanning-basics.html](https://nmap.org/book/man-port-scanning-basics.html)
*   [https://www.cloudflare.com/learning/ddos/glossary/open-port/](https://www.cloudflare.com/learning/ddos/glossary/open-port/)
*   [https://en.wikipedia.org/wiki/List\_of\_TCP\_and\_UDP\_port\_numbers](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)

**跟踪路由** ![](https://i.ibb.co/M59qgxP/wc-trace-route.png?)

###### 描述

traceroute 是一种网络诊断工具，用于实时追踪信息包从一个系统到另一个系统的路径。它记录沿途的每个跳点，提供关于路由器的 IP 地址以及每个点的延迟详情。

###### 用例

在开源情报（OSINT）调查中，traceroute 可以提供有关支持网站或服务的网络基础设施的路由路径和地理信息的见解。这有助于识别网络瓶颈、潜在的网络流量审查或操控，并总体了解网络的结构和效率。此外，traceroute 收集的 IP 地址还可以为进一步的 OSINT 调查提供额外的查询点。

###### 相关链接

*   [https://www.cloudflare.com/learning/network-layer/what-is-traceroute/](https://www.cloudflare.com/learning/network-layer/what-is-traceroute/)
*   [https://tools.ietf.org/html/rfc1393](https://tools.ietf.org/html/rfc1393)
*   [https://en.wikipedia.org/wiki/Traceroute](https://en.wikipedia.org/wiki/Traceroute)
*   [https://www.ripe.net/publications/docs/ripe-611](https://www.ripe.net/publications/docs/ripe-611)

**碳足迹** ![](https://i.ibb.co/dmbFxjN/wc-carbon.png?)

###### 描述

此任务计算网站的估计碳足迹。这基于传输和处理的数据量以及托管和交付网站的服务器的能耗。网站规模越大，功能越复杂，其碳足迹很可能越高。

###### 应用场景

从开源情报（OSINT）的角度来看，了解网站的碳足迹并不能直接提供对其内部运作或背后组织的见解。然而，在考虑环境影响的更广泛分析中，它仍然可以提供有价值的数据。例如，对于关注数字基础设施可持续性的活动家、研究人员或道德黑客来说，了解并关注组织的环境影响是有用的。

###### 有用链接

*   [https://www.websitecarbon.com/](https://www.websitecarbon.com/)
*   [https://www.thegreenwebfoundation.org/](https://www.thegreenwebfoundation.org/)
*   [https://www.nature.com/articles/s41598-020-76164-y](https://www.nature.com/articles/s41598-020-76164-y)
*   [https://www.sciencedirect.com/science/article/pii/S0959652620307817](https://www.sciencedirect.com/science/article/pii/S0959652620307817)

**服务器信息** ![](https://i.ibb.co/Mk1jx32/wc-server.png?)

###### 描述

此任务会检索托管目标网站的服务器的各种信息。这可能包括服务器类型（例如，Apache、Nginx）、托管提供商、自治系统编号（ASN）等。通常通过 IP 地址查询和分析 HTTP 响应头来获取这些信息。

###### 应用场景

在开源情报（OSINT）的背景下，服务器信息可以提供有关网站背后的组织的重要线索。例如，托管提供商的选择可能表明该组织运营的地理区域，而服务器类型则可能暗示该组织使用的技术。自治系统（ASN）也可以用来找到由同一组织托管的其他域名。

###### 相关链接

*   [https://en.wikipedia.org/wiki/List\_of\_HTTP\_header\_fields](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)
*   [https://en.wikipedia.org/wiki/Autonomous\_system\_(Internet)](https://en.wikipedia.org/wiki/Autonomous_system_\(Internet\))
*   [https://tools.ietf.org/html/rfc7231#section-7.4.2](https://tools.ietf.org/html/rfc7231#section-7.4.2)
*   [https://builtwith.com/](https://builtwith.com/)

**域名信息** ![](https://i.ibb.co/89WLp14/wc-domain.png?)

###### 描述

此任务会为目标域名检索 Whois 记录。Whois 记录是一个丰富的信息来源，包括域名注册人的姓名和联系方式、域名的创建和到期日期、域名的名称服务器等。这些信息通常通过向 Whois 数据库服务器发送查询来获取。

###### 使用案例

在开源情报（OSINT）的情境下，Whois 记录可以提供关于网站背后实体的重要线索。它们可以显示该域名首次注册的时间以及到期时间，这可能有助于了解该实体的运营时间线。尽管联系信息通常被删除或匿名化，但有时仍可引导进一步的调查。域名服务器也可以用来将同一实体拥有的多个域名联系起来。

###### 相关链接

*   [https://en.wikipedia.org/wiki/WHOIS](https://en.wikipedia.org/wiki/WHOIS)
*   [https://www.icann.org/resources/pages/whois-2018-01-17-en](https://www.icann.org/resources/pages/whois-2018-01-17-en)
*   [https://whois.domaintools.com/](https://whois.domaintools.com/)

**DNS 安全扩展** ![](https://i.ibb.co/J54zVmQ/wc-dnssec.png?)

###### 描述

没有 DNSSEC，中间人（MITM）攻击者有可能伪造记录并引导用户访问钓鱼网站。这是因为 DNS 系统中没有内置的方法来验证响应是否被篡改，或者整个过程是否被攻击者中断。DNS 安全扩展（DNSSEC）通过使用公钥对 DNS 记录进行签名，使浏览器能够检测到响应是否被篡改。另一个解决这个问题的方法是 DoH（HTTPS over DNS）和 DoT（TLS over DNS）。

###### 应用场景

DNSSEC 信息可以提供组织网络安全成熟度和潜在漏洞的洞察，特别是关于 DNS 伪造和缓存中毒。如果没有实施 DNS 安全（DNSSEC、DoH、DoT 等），这可能会为攻击者提供一个入口点。

###### 相关链接

*   [https://dnssec-analyzer.verisignlabs.com/](https://dnssec-analyzer.verisignlabs.com/)
*   [https://www.cloudflare.com/dns/dnssec/how-dnssec-works/](https://www.cloudflare.com/dns/dnssec/how-dnssec-works/)
*   [https://en.wikipedia.org/wiki/Domain\_Name\_System\_Security\_Extensions](https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions)
*   [https://www.icann.org/resources/pages/dnssec-what-is-it-why-important-2019-03-05-en](https://www.icann.org/resources/pages/dnssec-what-is-it-why-important-2019-03-05-en)
*   [https://support.google.com/domains/answer/6147083](https://support.google.com/domains/answer/6147083)
*   [https://www.internetsociety.org/resources/deploy360/2013/dnssec-test-sites/](https://www.internetsociety.org/resources/deploy360/2013/dnssec-test-sites/)

访问此处了解更多：**[web-check.as93.net/about](https://web-check.as93.net/about)**

*请注意，并非所有检查都适用于所有站点。有时无法确定某些信息，而演示实例受到 Netlify 对 lambda 函数的一些限制。*

* * *

## 使用方法

### 开发中

1.  克隆仓库， `git clone git@github.com:Lissy93/web-check.git`
2.  进入该目录：`cd web-check`
3.  安装依赖：`yarn`
4.  启动开发服务器，使用：`yarn dev`

你需要安装 [Node.js](https://nodejs.org/en)（版本 18.16.1 或更高版本）以及 [git](https://git-scm.com/)。一些检查还需要在你的环境中安装 `chromium`、`traceroute` 和 `dns`。如果这些包不存在，这些任务将会被跳过。

### 部署 - 方案 #1: Netlify

请点击下方按钮，将项目部署到 Netlify 👇

[![Deploy to Netlify](https://img.shields.io/badge/Deploy-Netlify-%2330c8c9?style=for-the-badge&logo=netlify&labelColor=1e0e41 "Deploy Web-Check to Netlify, via 1-Click Script")](https://app.netlify.com/start/deploy?repository=https://github.com/lissy93/web-check)

### 部署 - 方案 #2: Docker

运行 `docker run -p 8888:3000 lissy93/web-check` ，然后打开 `http://localhost:3000`

您可以从以下地址获取 Docker 镜像：

*   DockerHub: [`lissy93/web-check`](https://hub.docker.com/r/lissy93/web-check)
*   GHCR: [`ghcr.io/lissy93/web-check`](https://github.com/Lissy93/web-check/pkgs/container/web-check)
*   或者通过克隆仓库并运行 `docker build -t web-check .` 来自行构建镜像

### 部署 - 方案 #3: 从源代码部署

请遵循上方“开发”部分中的说明，然后运行 \`yarn build\` && \`yarn start\` 来构建并启动应用程序。

### 配置

默认情况下无需进行任何配置。但您可以设置一些可选的环境变量，以访问一些额外的检查功能

*   `GOOGLE_CLOUD_API_KEY` - 一个 Google API 密钥（ [获取方式请参见此处](https://cloud.google.com/api-gateway/docs/authenticate-api-keys) ）。可以用于返回站点的质量指标
*   `TORRENT_IP_API_KEY` - 一个 torrent API 密钥（ [获取方式请参见此处](https://iknowwhatyoudownload.com/en/api/) ）。可以显示由某个 IP 下载的种子文件
*   `REACT_APP_SHODAN_API_KEY` - 一个 Shodan API 密钥（ [获取方式请参见此处](https://account.shodan.io/) ）。可以显示给定域名相关的主机名
*   `REACT_APP_WHO_API_KEY` - 一个 WhoAPI 密钥（ [获取方式请参见此处](https://whoapi.com/) ）。可以显示比默认任务更全面的 WhoIs 记录
*   `SECURITY_TRAILS_API_KEY` - 一个 Security Trails API 密钥（ [在这里获取](https://securitytrails.com/corp/api) ）。这将显示与 IP 相关联的组织信息
*   `BUILT_WITH_API_KEY` - 一个 BuiltWith API 密钥（ [在这里获取](https://api.builtwith.com/) ）。这将显示站点的主要功能

上述密钥可以添加到项目根目录下的 `.env` 文件中，或者通过 Netlify UI，或者直接传递给 Docker 容器。

* * *

## 社区

### 贡献

任何形式的贡献都十分欢迎，并将不胜感激。有关行为准则，请参见 [贡献者守则](https://www.contributor-covenant.org/version/2/1/code_of_conduct/) 。

要开始，请克隆仓库，进行更改，添加、提交并推送代码，然后返回这里提交合并请求。如果你是 GitHub 或开源的新手，可以参考 [这份指南](https://www.freecodecamp.org/news/how-to-make-your-first-pull-request-on-github-3#let-s-make-our-first-pull-request-) 或 [git 文档](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) 来入门，但如果你需要任何支持，请随时联系我们。

[![Submit a PR](https://img.shields.io/badge/Submit_a_PR-GitHub-%23060606?style=for-the-badge&logo=github&logoColor=fff)](https://github.com/Lissy93/web-check/compare)

### 报告错误

如果发现有些功能无法正常工作，或者想要建议新功能，可以在 GitHub 上提交问题单。对于 bug，请描述重现该问题所需的步骤，并附上相关信息，如系统信息和日志结果。

[![Raise an Issue](https://img.shields.io/badge/Raise_an_Issue-GitHub-%23060606?style=for-the-badge&logo=github&logoColor=fff)](https://github.com/Lissy93/web-check/issues/new/choose)

### 支持

[![Sponsor Lissy93 on GitHub](https://img.shields.io/badge/Sponsor_on_GitHub-Lissy93-%23ff4dda?style=for-the-badge&logo=githubsponsors&logoColor=ff4dda)](https://github.com/sponsors/Lissy93)

* * *

## 许可证

> ***[Lissy93/Web-Check](https://github.com/Lissy93/web-check)** 采用 [MIT](https://github.com/Lissy93/web-check/blob/HEAD/LICENSE) 许可证 © [Alicia Sykes](https://aliciasykes.com) 2023。*
> 如需更多信息，请参见 TLDR Legal > MIT

展开许可证

```
The MIT License (MIT)
Copyright (c) Alicia Sykes <alicia@omg.com> 

Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sub-license, and/or sell 
copies of the Software, and to permit persons to whom the Software is furnished 
to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included install 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANT ABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

*© [Alicia Sykes](https://aliciasykes.com) 2023*
*授权协议：MIT*
[![](https://i.ibb.co/4KtpYxb/octocat-clean-mini.png)](https://github.com/lissy93)
感谢访问 :))