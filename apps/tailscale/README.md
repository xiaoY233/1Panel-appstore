# Tailscale

[https://tailscale.com](https://tailscale.com)

Private WireGuard® 网络轻松实现

## 概述

此仓库包含 Tailscale 大部分开源代码。值得注意的是，它包括 `tailscaled` 服务端程序和 `tailscale` 命令行工具。`tailscaled` 服务端程序运行在 Linux、Windows、 [macOS](https://tailscale.com/kb/1065/macos-variants/) 上，以及在不同程度上运行在 FreeBSD 和 OpenBSD 上。Tailscale 的 iOS 和 Android 应用程序使用此仓库的代码，但此仓库不包含移动界面代码。

其他值得关注的 Tailscale 仓库：

*   Android 应用位于 [https://github.com/tailscale/tailscale-android](https://github.com/tailscale/tailscale-android)
*   Synology 包位于 [https://github.com/tailscale/tailscale-synology](https://github.com/tailscale/tailscale-synology)
*   QNAP 包位于 [https://github.com/tailscale/tailscale-qpkg](https://github.com/tailscale/tailscale-qpkg)
*   the Chocolatey 包装位于 [https://github.com/tailscale/tailscale-chocolatey](https://github.com/tailscale/tailscale-chocolatey)

有关 Tailscale 哪些部分是开源的以及原因，请参阅 [https://tailscale.com/opensource/](https://tailscale.com/opensource/)。

## 使用

我们为各种发行版和平台提供包服务位于 [https://pkgs.tailscale.com](https://pkgs.tailscale.com/).

## 其他客户端

macOS、iOS 和 Windows 客户端使用此仓库中的代码，但还包含小型图形界面包装器。这些图形界面包装器在非开源平台上本身也不是开源的。

## 构建

我们始终需要最新版本的 Go 语言发行版，目前是 Go 1.21。（虽然我们使用了自己 [的 Go 改进版本](https://github.com/tailscale/go/) 来构建发行版，但使用它并不是必需的。）

```
go install tailscale.com/cmd/tailscale{,d}
```

如果你在打包 Tailscale 以便分发，请使用 \`build\_dist.sh\` 而不是其他方式，以将提交 ID 和版本信息嵌入到二进制文件中：

```
./build_dist.sh tailscale.com/cmd/tailscale
./build_dist.sh tailscale.com/cmd/tailscaled
```

如果你的发行版有禁止使用 \`build\_dist.sh\` 的约定，请以你发行版的方式完成与其等效的操作，以便 bug 报告包含有用的版本信息。

## Bug

请将此代码或托管服务的相关问题提交到 [问题跟踪器](https://github.com/tailscale/tailscale/issues) 。

## 贡献

欢迎提交 Pull Request！但请提交 Bug。提交的代码更改信息应 [引用 Bug](https://docs.github.com/en/github/writing-on-github/autolinked-references-and-urls)。

我们要求提交的代码中包含 [开发者证书](https://en.wikipedia.org/wiki/Developer_Certificate_of_Origin) `Signed-off-by` 标记。

查看 `git log` 以了解我们的提交信息风格。基本上和 相同。

## 关于我们

主要由 的人员开发。其他贡献者请参见：

*   [https://github.com/tailscale/tailscale/graphs/contributors](https://github.com/tailscale/tailscale/graphs/contributors)
*   [https://github.com/tailscale/tailscale-android/graphs/contributors](https://github.com/tailscale/tailscale-android/graphs/contributors)

## 法律

WireGuard 是 Jason A. Donenfeld 的注册商标。