# FlexGet

[![image](https://github.com/Flexget/Flexget/actions/workflows/main.yml/badge.svg?branch=develop)](https://github.com/Flexget/Flexget/actions/workflows/main.yml?query=branch%3Adevelop)

[![image](https://img.shields.io/pypi/v/Flexget.svg)](https://pypi.python.org/pypi/Flexget)

[![image](https://img.shields.io/discord/536690097056120833?label=discord)](https://discord.gg/W6CQrJx)

[![image](http://isitmaintained.com/badge/resolution/Flexget/Flexget.svg)](http://isitmaintained.com/project/Flexget/Flexget)

[FlexGet](https://flexget.com) 是一款多功能的自动化工具，用于处理如种子、NZB、播客、漫画、剧集、电影等内容。它可以使用不同的来源，如 RSS 订阅源、HTML 页面、CSV 文件、搜索引擎，甚至为那些不提供任何有用订阅源的网站提供插件。

# 示例

Flexget 使用基于 [YAML](http://www.yaml.org/) 的配置文件。以下示例将检查链接中的 RSS 订阅源，匹配任何与系列名称匹配的项目并下载它们：

```
tasks:
  tv:
    rss: http://example.com/torrents.xml
    series:
    - some series
    - another series
    download: /tvshows
```

有许多插件允许以有趣的方式使用 FlexGet，并且持续有更多插件被添加。

FlexGet 与支持监视目录或提供 FlexGet 等外部工具接口的应用程序结合使用时非常实用。要了解 FlexGet 可以完成的各种事情，您可以查看我们的[烹饪书](https://flexget.com/Cookbook) 。

**变更日志:**[https://flexget.com/ChangeLog](https://flexget.com/ChangeLog)

**帮助:**[https://github.com/Flexget/Flexget/discussions](https://github.com/Flexget/Flexget/discussions)

**Chat:** [https://flexget.com/Chat](https://flexget.com/Chat)

**错误:**[https://github.com/Flexget/Flexget/issues](https://github.com/Flexget/Flexget/issues)

## 安装

FlexGet 可以通过 pip 命令安装：

```
pip install flexget
```

更多详细说明请参阅[安装指南](https://flexget.com/Install) .

## 如何使用 GIT checkout

请参考[开发指南](https://flexget.readthedocs.io/en/latest/develop/index.html#how-do-i-get-started) 。

如果您不想使用 virtualenv，可以使用 `flexget_vanilla.py` 文件来运行 FlexGet 而不需要 virtualenv，请注意您需要自行安装所有必需的依赖项。