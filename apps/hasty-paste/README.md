# Hasty Paste

![GitHub](https://img.shields.io/github/license/enchant97/hasty-paste?style=flat-square) ![Supported Python Version](https://img.shields.io/badge/python%20version-3.10-blue?style=flat-square) ![Lines of code](https://img.shields.io/tokei/lines/github/enchant97/hasty-paste?style=flat-square) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/enchant97/hasty-paste?style=flat-square) ![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/enchant97/hasty-paste?include_prereleases&label=latest%20release&style=flat-square)

一个快速且简洁的粘贴板。

## 寻找维护者

我发现自己不太使用这个应用，也没有无限的时间；希望有人能帮助维护这个项目。由于这个项目功能基本完善，我正在寻找能够进行小规模维护的人。

您可以通过以下链接[这里](https://github.com/enchant97#-how-to-reach-me) （或提出问题）联系我们，如果您感兴趣。

> 本项目**不会**被放弃。如果需要，任何安全或重大修复仍将完成。

## 功能

*   快速粘贴并保存，以分享一些文本
*   公开访问，无需身份验证
*   随机生成的 ID，可选“长”ID 以减少暴力攻击
*   添加过期粘贴
*   暗色主题
*   可选语法高亮
*   无需 JavaScript
*   资源占用最少
*   REST API
*   选择您的文件系统
    *   自定义平面文件系统
    *   :construction: S3 对象
*   缓存（内部和 Redis）
*   轻量级 Docker 镜像（使用 Alpine Linux）

## 展示

[![Showcase Image](docs/assets/showcase.png)](docs/assets/showcase.png)

## Docs

文档位于 [/docs](docs/index.md) 目录中。或者可以在网站上找到：[enchantedcode.co.uk/hasty-paste](https://enchantedcode.co.uk/hasty-paste)

## Hasty Paste CLI

这是一个简单的脚本，允许从命令行创建粘贴。您可以在此 [处](hastily-paste-it/README.md) 下载您的版本。

## 分支

| 名称 | 描述 | 状态 |
| --- | --- | --- |
| 主分支 | 准备发布的作品 | 稳定 |
| 下一个 | 为下一个版本工作 | 非常不稳定 |
| 历史版本 | 历史版本 | 不支持 |

> 如果正在运行项目，请选择最稳定的标签/版本

## 为什么叫“Hasty Paste”？

这个名字的选择并不是因为项目写得不好，而是因为你使用它时如此迅速，毫不在意，而且“Fast Paste”这个名字已经被占用了！

## 许可证

本项目版权所有（c）2023 年 Leo Spratt，以下显示许可证：

代码

```
AGPL-3 or any later version. Full license found in `LICENSE.txt`
```

文档

```
FDLv1.3 or any later version. Full license found in `docs/LICENSE.txt`
```