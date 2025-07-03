# ![dash. - a modern server dashboard](https://github.com/MauriceNino/dashdot/raw/main/.github/images/banner_muted.png)

 [![](https://github.com/MauriceNino/dashdot/actions/workflows/deploy.yaml/badge.svg?branch=main "GitHub Actions")](https://github.com/MauriceNino/dashdot/actions/workflows/deploy.yaml?branch=main)[![](https://discord.com/api/guilds/986251291577688064/widget.png?style=shield "Discord")](https://discord.gg/3teHFBNQ9W)

*欢迎加入 **Discord** 并 **star** 仓库，如果您喜欢这个项目！*

**dash.**（或 **dashdot**）是一个现代服务器仪表板，基于最新技术，以玻璃质感设计，旨在用于较小的 VPS 和私人服务器。

[在线演示](https://dash.mauz.dev) | [容器镜像](https://hub.docker.com/r/mauricenino/dashdot)

[![Consider sponsoring the development of this project](https://cdn.ko-fi.com/cdn/kofi2.png?v=3)](https://ko-fi.com/mauricenino)

**dash. 是一个开源项目，因此任何贡献都备受赞赏。 如果您有兴趣进一步开发此项目，请查看 [Contributing.md](https://github.com/MauriceNino/dashdot/blob/main/.github/CONTRIBUTING.md).**

如果您想从经济上支持这个项目，您可以访问我的 [GitHub 赞助](https://github.com/sponsors/MauriceNino) ，或者我的 [Ko-Fi](https://ko-fi.com/mauricenino)。

## 预览

| 暗黑模式 | 亮色模式 |
| --- | --- |
|  |  |

## 快速安装（Docker）

镜像托管在 [DockerHub](https://hub.docker.com/r/mauricenino/dashdot)，适用于 AMD64 和 ARM 设备。

```bash
docker container run -it \
  -p 80:3001 \
  -v /:/mnt/host:ro \
  --privileged \
  mauricenino/dashdot
```

要了解更多关于为什么需要哪个标志，或者如果您想使用其他安装选项（如 `docker-compose` 或从源代码安装），请查看 [安装选项](https://getdashdot.com/docs/install) 。

要了解更多关于配置选项的信息，您可以访问[配置选项](https://getdashdot.com/docs/config) 。