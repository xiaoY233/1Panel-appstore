# code-server

[!["GitHub Discussions"](https://img.shields.io/badge/%20GitHub-%20Discussions-gray.svg?longCache=true&logo=github&colorB=purple)](https://github.com/coder/code-server/discussions) [!["Join us on Slack"](https://img.shields.io/badge/join-us%20on%20slack-gray.svg?longCache=true&logo=slack&colorB=brightgreen)](https://coder.com/community) [![Twitter Follow](https://img.shields.io/twitter/follow/CoderHQ?label=%40CoderHQ&style=social)](https://twitter.com/coderhq) [![codecov](https://codecov.io/gh/coder/code-server/branch/main/graph/badge.svg?token=5iM9farjnC)](https://codecov.io/gh/coder/code-server) [![See latest](https://img.shields.io/static/v1?label=Docs&message=see%20latest&color=blue)](https://coder.com/docs/code-server/latest)

在任何机器上运行 [VS Code](https://github.com/Microsoft/vscode)，并通过浏览器访问它。

![Screenshot](https://raw.githubusercontent.com/coder/code-server/main/docs/assets/screenshot.png)

## 亮点

*   在任何设备上使用一致的开发环境进行编码
*   使用云服务器加速测试、编译、下载等操作
*   在移动时保护电池寿命；所有密集型任务都在您的服务器上运行

## 要求

查看[要求](https://coder.com/docs/code-server/latest/requirements)以获取最低配置信息，以及如何设置 Google VM 以安装 code-server 的说明。

**TL;DR:** 开启 WebSockets 的 Linux 机器，1 GB RAM，2 个 vCPU

## 入门指南

有四种入门方式：

1.  使用[安装脚本](https://github.com/coder/code-server/blob/main/install.sh) ，该脚本自动化了大部分过程。如果可能，脚本会使用系统包管理器。
2.  手动 [安装 code-server](https://coder.com/docs/code-server/latest/install)
3.  使用 [coder/coder](https://cdr.co/coder-github) 将 code-server 部署到您的团队
4.  通过我们的单点点击按钮和指南，将 [code-server 部署到云服务提供商](https://github.com/coder/deploy-code-server) ⚡

如果您使用安装脚本，可以预览安装过程中发生的情况：

```bash
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
```

安装，运行：

```bash
curl -fsSL https://code-server.dev/install.sh | sh
```

完成安装后，安装脚本将打印出运行和启动 code-server 的说明。

> **注意** 要在您的基础设施上为团队管理 code-server，请参阅：[coder/coder](https://cdr.co/coder-github)

我们还有一份详细的 [设置和配置](https://coder.com/docs/code-server/latest/guide) 指南。

## 疑问？

查看[常见问题解答](https://coder.com/docs/code-server/latest/FAQ) 。

## 想要帮忙？

查看[贡献指南](https://coder.com/docs/code-server/latest/CONTRIBUTING) 。

## 招聘

对在 Coder 工作感兴趣？查看[我们的开放职位](https://coder.com/careers#openings) ！

## 为企业

想为您的组织或企业进行远程开发？访问[我们的网站](https://coder.com)了解有关 Coder 的更多信息。