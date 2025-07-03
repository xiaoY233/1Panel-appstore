# SyncClipboard
[![build](https://github.com/Jeric-X/SyncClipboard/actions/workflows/build-entry.yml/badge.svg?branch=master)](https://github.com/Jeric-X/SyncClipboard/actions?query=branch%3Amaster)

中文 | [English](https://github.com/Jeric-X/SyncClipboard/blob/master/docs/README_EN.md)


## 注意

- 默认用户名是`admin`，密码是`admin`，可以通过应用目录下的配置文件进行修改。


## 功能

- 剪贴板同步，支持文字、图片和文件。服务器/客户端架构，可以使用客户端内置服务器、独立部署服务器，也可以使用支持WebDAV的网盘作为服务器  
- 优化图片类型的剪贴板，功能有：
  - 从任意位置复制图片时，可以直接向文件系统粘贴图片文件，反之亦然
  - 从浏览器复制图片后，后台下载原图到本地，解决无法从浏览器拷贝动态图的问题（大多网站有认证，适用范围有限，支持bilibili动态图片）
  - 从文件系统复制较新格式类型的图片文件时（webp/heic等），在剪贴板内储存gif或jpg格式，用于直接向支持图片的文本框粘贴图片
