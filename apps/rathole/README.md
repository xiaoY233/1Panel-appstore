# rathole

![rathole-logo](https://github.com/rapiz1/rathole/raw/main/docs/img/rathole-logo.png)

[![GitHub stars](https://img.shields.io/github/stars/rapiz1/rathole)](https://github.com/rapiz1/rathole/stargazers)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/rapiz1/rathole)](https://github.com/rapiz1/rathole/releases)
![GitHub Workflow Status (branch)](https://img.shields.io/github/actions/workflow/status/rapiz1/rathole/rust.yml?branch=main)
[![GitHub all releases](https://img.shields.io/github/downloads/rapiz1/rathole/total)](https://github.com/rapiz1/rathole/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/rapiz1/rathole)](https://hub.docker.com/r/rapiz1/rathole)

[English](https://github.com/rapiz1/rathole/blob/main/README.md) | [简体中文](https://github.com/rapiz1/rathole/blob/main/README-zh.md)

安全、稳定、高性能的内网穿透工具，用 Rust 语言编写

rathole，类似于 [frp](https://github.com/fatedier/frp) 和 [ngrok](https://github.com/inconshreveable/ngrok)，可以让 NAT 后的设备上的服务通过具有公网 IP 的服务器暴露在公网上。

# 使用说明
- 配置文件如何编写参考原项目说明。
- 所需的证书可以使用应用目录下的`create_self_signed_cert.sh`脚本来生成。
