 [![Typesense](https://github.com/typesense/typesense/raw/v29/assets/typesense_logo.svg)](https://typesense.org)

Typesense 是一个快速且容忍拼写错误的搜索引擎，适用于构建令人愉悦的搜索体验。

一个开源的 Algolia 替代方案
一个使用更简单的 ElasticSearch 替代方案

[![](https://img.shields.io/docker/pulls/typesense/typesense)](https://hub.docker.com/r/typesense/typesense/tags) [![](https://img.shields.io/github/stars/typesense/typesense?label=github%20stars&style=flat)](https://github.com/typesense)
[![](https://img.shields.io/badge/searches_per_month_on_typesense_cloud-10%20Billion-blue)](https://cloud.typesense.org)

[网站](https://typesense.org) | [文档](https://typesense.org/docs/) | [路线图](https://typesense.link/roadmap) | [Slack 社区](https://typesense.link/slack-community) | [社区主题](https://threads.typesense.org/kb) | [Twitter](https://twitter.com/typesense)

![Typesense Demo](https://github.com/typesense/typesense/raw/v29/assets/typesense_books_demo.gif)

✨ 这里有几个 **实时演示** ，展示了 Typesense 在大规模数据集中的应用：

*   搜索 MusicBrainz 中的 3200 万首歌曲数据集：[songs-search.typesense.org](https://songs-search.typesense.org/)
*   搜索 OpenLibrary 中的 2800 万本书数据集：[books-search.typesense.org](https://books-search.typesense.org/)
*   搜索来自 RecipeNLG 的 200 万食谱数据集：[recipe-search.typesense.org](https://recipe-search.typesense.org/)
*   搜索来自 Linux 内核的 100 万 Git 提交信息：[linux-commits-search.typesense.org](https://linux-commits-search.typesense.org/)
*   带有自动补全的拼写检查器，包含 333,000 个英语单词：[spellcheck.typesense.org](https://spellcheck.typesense.org/)
*   电子商务浏览体验：[ecommerce-store.typesense.org](https://ecommerce-store.typesense.org/)
*   GeoSearch / 搜索体验: [airbnb-geosearch.typesense.org](https://airbnb-geosearch.typesense.org/)
*   Search / 浏览按主题分类的 xkcd 漫画: [xkcd-search.typesense.org](https://xkcd-search.typesense.org/)
*   语义 / 混合搜索 30 万条 HN 评论: [hn-comments-search.typesense.org](https://hn-comments-search.typesense.org)

🗣️ 🎥 如果您更喜欢观看视频:

*   这里有一个视频，我们介绍了 Typesense 并展示了操作流程：[https://youtu.be/F4mB0x_B1AE?t=144](https://youtu.be/F4mB0x_B1AE?t=144)
*   请查看 Typesense 在 Google I/O 开发者大会上的最新提及：[https://youtu.be/qBkyU1TJKDg?t=2399](https://youtu.be/qBkyU1TJKDg?t=2399)
*   这里有一个视频，我们的社区成员对 Typesense 进行了概述，并展示了完整的演示：[https://www.youtube.com/watch?v=kwtHOkf7Jdg](https://www.youtube.com/watch?v=kwtHOkf7Jdg)

## 快速链接

*   [功能](#功能)
*   [基准测试](#基准测试)
*   [开发路线图](#开发路线图)
*   [谁在使用这个？](#谁在使用这个？)
*   [安装](#安装)
*   [快速开始](#快速开始)
*   [逐步指南](#逐步指南)
*   [API 文档](#API-文档)
*   [API 客户端](#API-客户端)
*   [搜索 UI 组件](#搜索-UI-组件)
*   [常见问题](#常见问题)
*   [支持](#支持)
*   [贡献](#贡献)
*   [获取最新更新](#获取最新更新)
*   [从源代码构建](#从源代码构建)

## 功能

*   **拼写宽容度：** 开箱即用地处理拼写错误。
*   **简单易用：**易于设置、集成、操作和扩展。
*   **⚡ 极速高效：**用 C++ 编写。从底层精心设计，以实现低延迟（<50ms）的即时搜索。
*   **可调排名：**轻松调整搜索结果以达到最佳效果。
*   **排序：**根据查询时的特定字段动态排序（例如“按价格升序排序”功能）。
*   **分面搜索与筛选：** 深入细化并精炼结果。
*   **分组与唯一性：** 将相似结果分组以展示更多多样性。
*   **联合搜索：** 在单个 HTTP 请求中跨多个集合（索引）进行搜索。
*   **地理搜索：** 按纬度/经度周围的结果进行搜索和排序，或在边界框内进行搜索。
*   **向量搜索：** 在 Typesense 中索引来自你的机器学习模型的嵌入，并进行最近邻搜索。可以用于构建相似性搜索、语义搜索、视觉搜索、推荐等。
*   **语义/混合搜索：** 在 Typesense 中自动生成嵌入，使用内置模型如 S-BERT、E-5 等，或使用 OpenAI、PaLM API 等，对查询和索引数据进行处理。这允许你将 JSON 数据输入 Typesense，并构建开箱即用的语义搜索+关键词搜索体验。
*   **对话式搜索（内置检索生成）：** 向 Typesense 发送问题，并基于你已索引在 Typesense 中的数据生成完整的句子作为响应。类似于 ChatGPT，但基于你自己的数据。
*   **自然语言搜索：** 基于 LLM 的意图检测与查询理解，将任何自由格式的自然语言短语转换为结构化的过滤器、排序和查询。
*   **图像搜索：** 使用图像内容的文字描述在图像中进行搜索，或使用 CLIP 模型进行相似性搜索。
*   **语音搜索：** 通过语音录音捕获并发送查询 - Typesense 将使用 Whisper 模型进行转录并提供搜索结果。
*   **范围受限的 API 密钥：** 生成仅允许访问某些记录的 API 密钥，适用于多租户应用程序。
*   **JOINs:** 通过共同的引用字段连接一个或多个集合，并在查询时将它们连接起来。这允许您优雅地建模 SQL-like 关系。
*   **同义词：** 定义词语之间的等同关系，因此搜索一个词语也将返回定义的同义词结果。
*   **内容策展与商品陈列：** 将特定记录在搜索结果中提升到固定位置，以突出展示。
*   **raft-based 聚类：** 设置一个高可用的分布式集群。
*   **无缝版本升级：** 随着新版本的 Typesense 发布，升级过程只需替换二进制文件并重启 Typesense 即可。
*   **无运行时依赖：**Typesense 是一个单二进制文件，你可以用一个命令在本地或生产环境中运行。

**这里没有看到某个功能？** 如果有人已经请求过该功能，请在相关问题中留言说明你的使用场景，或者如果没有相关问题，可以新开一个 issue。我们根据用户反馈来优先考虑功能开发，所以非常希望听到你的声音。

## 路线图

这是 Typesense 的公开路线图：[https://typesense.link/roadmap](https://typesense.link/roadmap)。

第一列还解释了我们如何优先考虑功能、如何影响优先级以及我们的发布节奏。

## 基准测试

*   一个包含 **220 万份食谱** （食谱名称和食材）的数据集：
    *   在 Typesense 中索引时占用约 900MB 的内存
    *   全部 220 万条记录的索引耗时约 3.6 分钟
    *   在一台配备 4vCPU 的服务器上，Typesense 能够处理每秒高达**104 个并发搜索查询**，平均搜索处理时间为**11ms**。
*   包含**2800万本书**（书名、作者和类别）的数据集：
    *   在 Typesense 中索引时大约使用了 14GB 的 RAM
    *   耗时78分钟索引全部2800万条记录
    *   在一台拥有 4 个 vCPU 的服务器上，Typesense 能够处理每秒高达 **46 个并发搜索查询** ，平均搜索处理时间为 **28ms**。
*   在包含 **300 万产品** （亚马逊产品数据）的数据集中，Typesense 能够在 8 个 vCPU 的 3 节点高可用 Typesense 集群上处理每秒高达 **250 个并发搜索查询** 。

我们希望使用更大的数据集进行基准测试，如果能找到公开的大数据集的话。如果你有任何关于开放结构化数据集的建议，请通过创建问题告诉我们。我们也很乐意收到你自己的大数据集的基准测试结果，请提交一个拉取请求！

## 谁在使用这个？

Typesense 被不同领域和垂直行业的用户广泛使用。

在 Typesense Cloud 上，我们每月处理超过 **100 亿** 次搜索。Typesense 的 Docker 镜像已被下载超过 1200 万次。

我们最近开始在我们的 [展示区](SHOWCASE.md) 记录使用它的用户。如果您希望被包含在列表中，请随时编辑 [SHOWCASE.md](SHOWCASE.md) 并向我们提交 PR。

您还会在 [Typesense Cloud](https://cloud.typesense.org) 的首页上看到一列用户标志。

## 安装

**Option 1:** 您可以下载我们为 Linux（x86_64 和 arm64）和 Mac（x86_64）发布的二进制包。

**Option 2:** 您也可以从我们的官方 Docker 镜像运行 Typesense。

**Option 3:** 使用 Typesense Cloud 启动托管集群：

[![Deploy with Typesense Cloud](https://github.com/typesense/typesense/raw/v29/assets/deploy_with_typesense_cloud.svg)](https://cloud.typesense.org)

## 快速开始

以下是一个快速示例，展示如何在 Typesense 中创建集合、索引文档并对其进行搜索。

让我们先通过 Docker 启动 Typesense 服务器：

```
docker run -p 8108:8108 -v/tmp/data:/data typesense/typesense:29.0 --data-dir /data --api-key=Hu52dwsas2AdxdE
```

我们有几种语言的 [API 客户端](#api-clients) ，但这个例子中我们使用 Python 客户端。

安装 Typesense 的 Python 客户端：

```
pip install typesense
```

现在我们可以初始化客户端并创建一个 `companies` 集合：

```python
import typesense

client = typesense.Client({
  'api_key': 'Hu52dwsas2AdxdE',
  'nodes': [{
    'host': 'localhost',
    'port': '8108',
    'protocol': 'http'
  }],
  'connection_timeout_seconds': 2
})

create_response = client.collections.create({
  "name": "companies",
  "fields": [
    {"name": "company_name", "type": "string" },
    {"name": "num_employees", "type": "int32" },
    {"name": "country", "type": "string", "facet": True }
  ],
  "default_sorting_field": "num_employees"
})
```

现在，让我们向刚刚创建的集合中添加一个文档：

```python
document = {
 "id": "124",
 "company_name": "Stark Industries",
 "num_employees": 5215,
 "country": "USA"
}

client.collections['companies'].documents.create(document)
```

最后，让我们查找我们刚刚索引的文档：

```python
search_parameters = {
  'q'         : 'stork',
  'query_by'  : 'company_name',
  'filter_by' : 'num_employees:>100',
  'sort_by'   : 'num_employees:desc'
}

client.collections['companies'].documents.search(search_parameters)
```

**你注意到查询文本中的拼写错误了吗？** 没有大碍。Typesense 默认就能处理这类拼写错误！

## 逐步指南

在我们的网站上，您可以查看详细的逐步指南 [这里](https://typesense.org/guide) 。

这将引导您完成启动 Typesense 服务器、在其中索引数据以及查询数据集的过程。

## API 文档

这是我们在网站上提供的官方 API 文档：[https://typesense.org/api](https://typesense.org/api)。

如果发现文档或教程有任何问题，请告诉我们或在这里提交一个 PR：[https://github.com/typesense/typesense-website](https://github.com/typesense/typesense-website)

## API 客户端

虽然你可以直接使用 CURL 与 Typesense 服务器交互，但我们提供了官方 API 客户端，以便从你选择的语言中简化使用 Typesense。这些 API 客户端内置了智能重试策略，确保通过它们进行的 API 调用在 HA 配置中具有高可靠性。

*   [JavaScript](https://github.com/typesense/typesense-js)
*   [PHP](https://github.com/typesense/typesense-php)
*   [Python](https://github.com/typesense/typesense-python)
*   [Ruby](https://github.com/typesense/typesense-ruby)

如果暂时没有我们语言的 API 客户端，您仍然可以使用任何流行的 HTTP 客户端库直接访问 Typesense 的 API。

这里有一些社区贡献的客户端和集成：

*   [Go](https://github.com/typesense/typesense-go)
*   [.Net](https://github.com/DAXGRID/typesense-dotnet)
*   [Java](https://github.com/typesense/typesense-java)
*   [Rust](https://github.com/typesense/typesense-rust)
*   [Dart](https://github.com/typesense/typesense-dart)
*   [Perl](https://github.com/Ovid/Search-Typesense)
*   [Swift](https://github.com/typesense/typesense-swift)
*   [Clojure](https://github.com/runeanielsen/typesense-clj)
*   [python orm 客户端](https://github.com/RedSnail/typesense_orm)
*   [PHP SEAL 适配器](https://github.com/schranz-search/seal-typesense-adapter)
*   [Elixir](https://github.com/jaeyson/ex_typesense)

我们欢迎社区贡献，增加更多的官方客户端库和集成。请通过 [contact@typsense.org](mailto:contact@typsense.org) 或在 GitHub 上打开问题与我们合作，共同构建架构。🙏

### 框架集成

我们还提供了以下框架集成：

*   [Laravel](https://github.com/typesense/laravel-scout-typesense-engine)
*   [Firebase](https://github.com/typesense/firestore-typesense-search)
*   [Gatsby](https://www.gatsbyjs.com/plugins/gatsby-plugin-typesense/)
*   [WordPress](https://wordpress.org/plugins/search-with-typesense/?ref=typesense)
*   [WooCommerce](https://www.codemanas.com/downloads/typesense-search-for-woocommerce/?ref=typesense)
*   [Symfony](https://github.com/acseo/TypesenseBundle)
*   [InstantSearch](https://github.com/typesense/typesense-instantsearch-adapter)
*   [DocSearch](https://typesense.org/docs/guide/docsearch.html)
*   [Docusaurus](https://github.com/typesense/docusaurus-theme-search-typesense)
*   [ToolJet](https://tooljet.com/?ref=typesense)
*   [Plone CMS](https://pypi.org/project/zopyx.typesense/)
*   [Craft CMS](https://plugins.craftcms.com/typesense)
*   [SEAL](https://github.com/schranz-search/schranz-search) 提供了 Typesense 在 Laravel、Symfony、Spiral、Yii 和 Laminas Mezzio PHP 框架中的集成

### Postman Collection

我们维护了一个社区贡献的 Postman 集合：[https://github.com/typesense/postman](https://github.com/typesense/postman)。

[Postman](https://www.postman.com/downloads/) 是一个应用程序，允许您通过点击而不是在终端中手动输入来执行 HTTP 请求。上面的 Postman 集合提供了模板请求，您可以导入到 Postman 中，以快速调用 Typesense 的 API。

## 搜索 UI 组件

您可以使用我们的 [InstantSearch.js 适配器](https://github.com/typesense/typesense-instantsearch-adapter) 要快速构建强大的搜索体验，包含过滤、排序、分页等功能。

具体方法请参阅：[https://typesense.org/docs/guide/search-ui-components.html](https://typesense.org/docs/guide/search-ui-components.html)

## 常见问题

### 与 Elasticsearch 有何不同？

Elasticsearch 是一个大型软件，设置、管理、扩展和优化它都需要相当大的努力。它提供了数千个配置参数，以达到理想的配置。因此，它更适合拥有足够资源将其部署到生产环境、定期监控并扩展的大型团队，尤其是当他们需要存储数十亿文档和 PB 级数据（例如日志）时。

Typesense 是专门为缩短“上市时间”以提供出色的搜索体验而构建的。它是一个轻量级但强大且可扩展的替代方案，专注于开发人员的幸福感和体验，拥有简洁且文档完善的 API、清晰的语义和智能的默认设置，使其开箱即用，无需调整许多参数。

Elasticsearch 运行在 JVM 上，本身就可能需要大量的调优工作以达到最佳性能。相比之下，Typesense 是一个单一的轻量级自包含原生二进制文件，因此设置和操作都非常简单。

请查看功能对比 [这里](https://typesense.org/typesense-vs-algolia-vs-elasticsearch-vs-meilisearch/) 。

### 这与 Algolia 有何不同？

Algolia 是一款专有的托管型搜索即服务产品，在成本不是问题的情况下表现良好。根据我们的经验，快速发展的网站和应用很快就会遇到搜索和索引限制，伴随着随着规模扩大而产生的昂贵计划升级。

相比之下，Typesense 是一款开源产品，你可以自行在其上运行，也可以使用我们的托管 SaaS 服务——Typesense Cloud。开源版本是免费使用的（当然，除了你自己的基础设施成本）。使用 Typesense Cloud 时，我们不按记录数或搜索操作收费。相反，你会获得一个专用集群，可以向其投入尽可能多的数据和流量。你只需根据所选配置支付固定的每小时费用和带宽费用，类似于大多数现代云平台。

从产品角度来看，Typesense 在精神上更接近于 Algolia，而不是 Elasticsearch。然而，我们已经解决了 Algolia 的一些重要限制。

Algolia 需要为每种排序方式单独创建索引，这会占用你的计划配额。大多数索引设置，如搜索字段、分面字段、分组字段、排名设置等，都是在创建索引时定义的，而不是在查询时动态设置的。

而 Typesense 允许在查询时通过查询参数来配置这些设置，这使其非常灵活，并解锁了新的应用场景。Typesense 还能够在单个索引中提供排序结果，而不需要创建多个索引，这有助于减少内存消耗。

Algolia 提供了一些 Typesense 目前尚未具备的功能，如个性化搜索和基于服务器的搜索分析。对于分析，你仍然可以在客户端进行搜索指标的跟踪，并将搜索数据发送到你选择的网站分析工具。

我们计划在 Typesense 中弥补这一差距，但在那之前，请通过我们的问题跟踪器创建功能请求，告诉我们这些功能是否是你的应用场景的拦路虎。

参见并排功能对比 [这里](https://typesense.org/typesense-vs-algolia-vs-elasticsearch-vs-meilisearch/) 。

### 速度很棒，但内存占用如何？

一个全新的 Typesense 服务器大约会消耗 30 MB 的内存。当你开始索引文档时，内存使用量会相应增加。具体增加多少取决于你索引的字段数量和类型。

我们力求使内存中的数据结构保持精简。举个大概的例子：当索引 100 万条 Hacker News 标题及其分数时，Typesense 消耗的内存约为 165 MB。同样大小的数据以 JSON 格式存储在磁盘上的大小为 88 MB。如果你有任何来自你自己的数据集的数字，可以添加到这里，请发送一个 PR 给我们！

### 为什么选择 GPL 许可证？

从我们的经验来看，公司通常会对他们使用的带有 GPL 许可证的**库**感到担忧，因为库代码会被直接集成到他们的代码中，从而形成衍生作品并触发 GPL 合规性要求。然而，Typesense Server 是**服务器软件** ，我们期望用户通常会将其作为独立的守护进程运行，而不是将其集成到自己的代码中。GPL 对此类用例给予了宽泛的覆盖和允许（例如：Linux 就是 GPL 许可的）。现在，AGPL 会使通过网络访问的服务器软件被视为衍生作品，而不是 GPL。因此，我们没有选择使用 AGPL 许可证。

现在，如果有人对 Typesense 服务器进行了修改，GPL 实际上允许你保留这些修改，只要你不分发修改后的代码。因此，一家公司可以修改 Typesense 服务器并在内部运行修改后的代码，而无需公开其修改内容，只要他们将修改后的代码提供给所有有权访问该修改软件的人。

现在，如果有人对 Typesense 服务器进行修改并分发这些修改，那么 GPL 就会生效。鉴于我们已经将工作成果发布给了社区，我们也希望其他人的修改也能以开源的形式回馈给社区。 **我们使用 GPL 来实现这一目的。** 其他许可证可能会允许我们的开源工作被修改、闭源并分发，这是我们希望避免的情况，以确保 Typesense 项目的长期可持续性。

这里是我们选择 GPL 的更多背景信息，如 Discourse 所述：[https://meta.discourse.org/t/why-gnu-license/2531](https://meta.discourse.org/t/why-gnu-license/2531)。其中提到的许多观点与我们相符。

以上仅适用于 Typesense 服务器。我们的客户端库确实是为了集成到用户代码中而设计的，因此它们使用的是 Apache 许可证。

总之，AGPL 通常对服务器软件来说是个问题，我们选择不使用它。我们认为 GPL 对 Typesense 服务器来说能够捕捉到我们希望为这个开源项目实现的核心理念。GPL 有着成功应用于许多流行开源项目的悠久历史。我们的库仍然是使用 Apache 许可证。

如果你因为许可证问题而无法使用 Typesense，并且希望进一步探讨这个问题，请随时联系我们。

## 支持

👋 🌐 如果你有关于 Typesense 的一般性问题，想要打招呼或者只是想关注一下，我们诚邀你加入我们的公共 [Slack 社区](https://typesense.link/slack-community) 。

如果你遇到任何问题或 bug，请在 GitHub 上创建一个 issue，我们会尽力帮助你。

我们通过 GitHub 上的问题跟踪器提供良好的支持。然而，如果您希望获得私密且优先级较高的支持：

*   保证的服务级别协议
*   电话/视频通话以讨论您的具体用例，并获得最佳实践建议
*   Slack 上的私聊
*   扩展最佳实践指南
*   优先级高的功能请求

我们提供付费支持选项，详情请参阅 [这里](https://typesense.org/support/) 。

## 贡献

我们是一个精简团队，致力于普及搜索技术，我们非常需要各方面的帮助！如果您愿意参与进来，请查看 [Contributing.md](https://github.com/typesense/typesense/blob/master/CONTRIBUTING.md) 了解我们如何需要您的帮助。

## 获取最新更新

如果你想在我们发布新版本时收到更新，请点击页面顶部的“Watch”按钮，然后选择“仅发布内容”。GitHub 将会在每次新发布时向你发送通知和变更日志。

我们还会在 Twitter 账号上发布关于 Typesense 的发布信息及其他相关主题的更新。关注我们：[@typesense](@typesense)

👋 🌐 我们还会在 Slack 社区发布更新。[加入我们的 Slack 社区](加入我们的 Slack 社区)。

## 从源代码构建

我们使用 [Bazel](https://bazel.build) 进行构建。

Typesense 需要以下依赖：

*   兼容 C++11 的编译器（GCC >= 4.9.0，Apple Clang >= 8.0，Clang >= 3.9.0）
*   Snappy
*   zlib
*   OpenSSL (>=1.0.2)
*   curl
*   ICU

请参阅 [CI 构建步骤](.github/workflows/tests.yml) 以获取最新的依赖项。

安装完成后，在仓库根目录下运行以下命令：

```shell
bazel build //:typesense-server
```

首次构建会花费一些时间，因为构建过程中会拉取并构建其他第三方库。

* * *

&copy; 2016-至今 Typesense Inc.