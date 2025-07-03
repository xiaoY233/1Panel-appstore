# aliyundrive-webdav

[![GitHub Actions](https://github.com/messense/aliyundrive-webdav/workflows/CI/badge.svg)](https://github.com/messense/aliyundrive-webdav/actions?query=workflow%3ACI)
[![PyPI](https://img.shields.io/pypi/v/aliyundrive-webdav.svg)](https://pypi.org/project/aliyundrive-webdav)
[![Docker Image](https://img.shields.io/docker/pulls/messense/aliyundrive-webdav.svg?maxAge=2592000)](https://hub.docker.com/r/messense/aliyundrive-webdav/)
[![aliyundrive-webdav](https://snapcraft.io/aliyundrive-webdav/badge.svg)](https://snapcraft.io/aliyundrive-webdav)
[![Crates.io](https://img.shields.io/crates/v/aliyundrive-webdav.svg)](https://crates.io/crates/aliyundrive-webdav)

> 🚀 Help me to become a full-time open-source developer by [sponsoring me on GitHub](https://github.com/sponsors/messense)

阿里云盘 WebDAV 服务，主要使用场景为配合支持 WebDAV 协议的客户端 App 如 [Infuse](https://firecore.com/infuse)、[nPlayer](https://nplayer.com)
等实现在电视上直接观看云盘视频内容， 支持客户端 App 直接从阿里云盘获取文件播放而不经过运行本应用的服务器中转, 支持上传文件，但受限于 WebDAV 协议不支持文件秒传。

## 获取 refresh token

* [通过在线工具获取 refresh token](https://messense-aliyundrive-webdav-backendrefresh-token-ucs0wn.streamlit.app/)
* 命令行运行 `aliyundrive-webdav qr login` 扫码授权后会输出 refresh token
