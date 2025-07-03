[![Syncthing](https://github.com/syncthing/syncthing/raw/main/assets/logo-text-128.png)](https://syncthing.net/)

* * *

[![MPLv2 License](https://img.shields.io/badge/license-MPLv2-blue.svg?style=flat-square)](https://www.mozilla.org/MPL/2.0/) [![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/88/badge)](https://bestpractices.coreinfrastructure.org/projects/88) [![Go Report Card](https://goreportcard.com/badge/github.com/syncthing/syncthing)](https://goreportcard.com/report/github.com/syncthing/syncthing)

## 目标

Syncthing 是一个**持续文件同步程序** 。它可以在两台或多台计算机之间同步文件。我们力求实现以下目标。这些目标按重要性排序，最重要的目标排在最前面。以下为目标列表的摘要版本 - 如需更多注释，请参阅完整的[目标文档](https://github.com/syncthing/syncthing/blob/main/GOALS.md) 。

Syncthing 应该是：

1.  **防止数据丢失**
    
    保护用户的数据至关重要。我们采取一切合理措施以避免损坏用户的文件。
    
2.  **抵御攻击者**
    
    再次强调，保护用户的数据至关重要。无论我们还有哪些其他目标，我们绝不能让用户的数据容易被未经授权的第三方窃听或篡改。
    
3.  **易于使用**
    
    Syncthing 应该易于接近、易于理解且包容性强。
    
4.  **自动运行**
    
    用户交互仅在必要时才应被要求。
    
5.  **普遍可用**
    
    Syncthing 应在每台常见计算机上运行。我们深知最新技术并非每个人都能获得。
    
6.  **个人用户**
    
    Syncthing 主要是为了赋予个人用户安全、安全且易于使用的文件同步能力。
    
7.  **其他一切**
    
    有很多我们关心的事情没有列在上面。只要这些价值不与上述目标相冲突，优化它们是可以接受的。
    

## 快速入门

请参阅[入门指南](https://docs.syncthing.net/intro/getting-started.html) 。

系统中可以在 [etc 目录](https://github.com/syncthing/syncthing/blob/main/etc) 找到一些在后台运行 Syncthing 的示例。此外，还有适用于 Windows、Mac 和 Linux 的几种 [图形界面实现](https://docs.syncthing.net/users/contrib.html#gui-wrappers) 。

## Docker

要在 Docker 中运行 Syncthing，请参阅 [Docker README](https://github.com/syncthing/syncthing/blob/main/README-Docker.md)。

## 投票表决功能/bug

我们鼓励您就您关心的问题进行投票。这有助于团队了解用户遇到的最大痛点，并可能影响接下来的工作重点。

## 联系方式

最好的联系点是论坛。如果您发现了一个显然是 bug 的问题，请在 GitHub 问题跟踪器中报告它。

## 构建

从源代码构建 Syncthing 很简单。在从发布版本提取源代码包或通过 git 检出代码后，您只需运行 \`go run build.go\`，二进制文件将创建在 \`./bin\` 目录中。有关构建过程的更多细节，请参阅相关指南。

## 已签名的发布版本

从 v0.10.15 版本起，发布的二进制文件使用密钥 D26E6ED000654A3E 进行 GPG 签名，该密钥可在 [https://syncthing.net/security.html](https://syncthing.net/security.html) 和大多数密钥服务器上获取。

此外，还内置了一个自动更新机制（在某些分发渠道中被禁用），该机制使用编译时嵌入的 ECDSA 签名。macOS 二进制文件也已正确代码签名。

## 文档

请参阅 Syncthing 的 [文档站点](https://docs.syncthing.net/) [\[源代码\]](https://github.com/syncthing/docs)。

所有代码均采用 [MPLv2 License](https://github.com/syncthing/syncthing/blob/main/LICENSE) 许可。