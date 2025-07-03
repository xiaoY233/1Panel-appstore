[![Test Status](https://github.com/GopeedLab/gopeed/workflows/test/badge.svg)](https://github.com/GopeedLab/gopeed/actions?query=workflow%3Atest)
[![Codecov](https://codecov.io/gh/GopeedLab/gopeed/branch/main/graph/badge.svg)](https://codecov.io/gh/GopeedLab/gopeed)
[![Release](https://img.shields.io/github/release/GopeedLab/gopeed.svg)](https://github.com/GopeedLab/gopeed/releases)
[![Download](https://img.shields.io/github/downloads/GopeedLab/gopeed/total.svg)](https://github.com/GopeedLab/gopeed/releases)
[![Donate](https://img.shields.io/badge/%24-donate-ff69b4.svg)](https://github.com/GopeedLab/gopeed/blob/main/.donate/index.md#donate)
[![Discord](https://img.shields.io/discord/1037992631881449472?label=Discord&logo=discord&style=social)](https://discord.gg/ZUJqJrwCGB)

![](https://github.com/GopeedLab/gopeed/raw/main/_docs/img/banner.png)


## 介绍

Gopeed（全称 Go Speed），是一款由`Golang`+`Flutter`开发的高速下载器，支持（HTTP、BitTorrent、Magnet）协议下载，并且支持全平台使用。

访问 ✈ [官方网站](https://gopeed.com/zh-CN) | 📖 [开发文档](https://docs.gopeed.com/zh/)

## 安装

**已支持平台**

- [x] windows
- [x] macos
- [x] linux
- [x] android
- [ ] ios
- [x] web
- [x] docker

[前往下载](https://github.com/GopeedLab/gopeed/releases/latest)

> 注：macos 版本运行如果提示损坏，请在终端执行 `xattr -d com.apple.quarantine /Applications/Gopeed.app` 命令

### 命令行工具

使用`go install`安装：

```bash
go install github.com/GopeedLab/gopeed/cmd/gopeed@latest
```

### Docker

#### 直接运行

```bash
docker run -d -p 9999:9999 -v /path/to/download:/root/Downloads liwei2633/gopeed
```

#### 使用 Docker Compose

```bash
docker-compose up -d
```

#### 访问服务

当 docker 容器运行时，可以通过 `http://localhost:9999` 访问 web 页面。

## 打赏

如果觉得项目对你有帮助，请考虑[打赏](https://github.com/GopeedLab/gopeed/blob/main/.donate/index.md#donate)以支持这个项目的发展，非常感谢！

## 界面展示

![](https://github.com/GopeedLab/gopeed/raw/main/_docs/img/ui-demo.png)
