

尊重隐私、可 hack 的元搜索引擎[](https://en.wikipedia.org/wiki/Metasearch_engine)

[searx.space](https://searx.space) 列出了可以直接使用的运行实例。

用户、管理员和开发者的手册可以在[首页](https://docs.searxng.org/user)获得。

[![SearXNG
install](https://img.shields.io/badge/-install-blue)](https://docs.searxng.org/admin/installation.html) [![SearXNG
homepage](https://img.shields.io/badge/-homepage-blue)](https://docs.searxng.org/) [![SearXNGwiki](https://img.shields.io/badge/-wiki-blue)](https://github.com/searxng/searxng/wiki) [![AGPLLicense](https://img.shields.io/badge/license-AGPL-blue.svg)](https://github.com/searxng/searxng/blob/master/LICENSE) [![Issues](https://img.shields.io/github/issues/searxng/searxng?color=yellow&label=issues)](https://github.com/searxng/searxng/issues) [![commits](https://img.shields.io/github/commit-activity/y/searxng/searxng?color=yellow&label=commits)](https://github.com/searxng/searxng/commits/master) [![weblate](https://translate.codeberg.org/widgets/searxng/-/searxng/svg-badge.svg)](https://translate.codeberg.org/projects/searxng/) [![SearXNGlogo](https://raw.githubusercontent.com/searxng/searxng/master/src/brand/searxng-wordmark.svg)](https://docs.searxng.org/)

* * *

# 联系

在 IRC 上提问或只是讨论 SearXNG：

IRC

[#searxng on libera.chat](https://web.libera.chat/?channel=#searxng)，该频道已连接到 Matrix。

Matrix

[#searxng:matrix.org](https://matrix.to/#/#searxng:matrix.org)

# searx 的区别

SearXNG 是 searx 的分支版本，具有显著的变化：

## 用户体验

*   重新制作（仍然很简单）的主题：
    *   适用于桌面、平板和移动设备。
    *   提供浅色和深色版本（可在设置中选择）。
    *   支持从右到左的语言。
    *   [屏幕截图](https://dev.searxng.org/screenshots.html)
*   翻译已更新，您可以在 [Weblate](https://translate.codeberg.org/projects/searxng/searxng/) 中贡献
*   偏好设置页面已更新：
    *   浏览哪些引擎可靠或不可靠。
    *   每个标签页内包含一组引擎。
    *   每个引擎都有描述。
*   由于采用了匿名指标，报告故障引擎变得更加容易，从而可以更快地修复它们
    *   [在服务器上关闭指标记录](https://docs.searxng.org/admin/engines/settings.html#general) ，如果你不想记录这些数据。
*   管理员可以 [阻止和/或替换搜索结果中的 URL](https://github.com/searxng/searxng/blob/5c1c0817c3996c5670a545d05831d234d21e6217/searx/settings.yml#L191-L199)

## 配置

*   即使在公共实例上，也不需要 [Morty](https://github.com/asciimoo/morty) 代理图片。
*   现在内置了限制器，因此不需要 [Filtron](https://github.com/searxng/filtron) 去阻止机器人。
*   维护良好的 [Docker 镜像](https://github.com/searxng/searxng-docker) ，现在也支持 ARM64 和 ARM/v7 架构。（或者你可以使用最新的安装脚本。）

## 贡献

*   可读的调试日志。
*   贡献代码变得更加容易，多亏了 [开发快速入门](https://docs.searxng.org/dev/quickstart.html) 指南。
*   进行了大量的代码清理和修复了诸多 bug。
*   最新的依赖列表。

# 翻译

帮助翻译 SearXNG 至 [Weblate](https://translate.codeberg.org/projects/searxng/searxng/)

![](https://translate.codeberg.org/widgets/searxng/-/multi-auto.svg)

# Codespaces

您可以通过 [GitHub Codespaces](https://docs.github.com/en/codespaces/overview) 在浏览器中贡献：

*   fork 仓库
*   点击 `<> Code` 绿色按钮
*   改为点击 `Codespaces` 选项卡而不是 `Local`
*   点击 `Create codespace on master`
*   VSCode 将在浏览器中启动
*   等待 \``git pull && make install`\` 出现并消失
*   您每个月有 [120 小时](https://github.com/settings/billing) (请参见您的 [现有 Codespaces 列表](https://github.com/codespaces) )
*   您可以在终端中使用 \``make run`\` 启动 SearXNG，或者按下 \``Ctrl+Shift+B`\`。