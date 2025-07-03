# Derper

[![docker workflow](https://github.com/fredliang44/derper-docker/actions/workflows/docker-image.yml/badge.svg)](https://hub.docker.com/r/fredliang/derper) [![docker pulls](https://img.shields.io/docker/pulls/fredliang/derper.svg?color=brightgreen)](https://hub.docker.com/r/fredliang/derper) [![platfrom](https://img.shields.io/badge/platform-amd64%20%7C%20arm64-brightgreen)](https://hub.docker.com/r/fredliang/derper/tags)

# 设置

> required: 设置环境变量 `DERP_DOMAIN` 为您的域名

```bash
docker run -e DERP_DOMAIN=derper.your-domain.com -p 80:80 -p 443:443 -p 3478:3478/udp fredliang/derper
```

| env | required | 描述 | 默认值 |
| --- | --- | --- | --- |
| DERP\_DOMAIN | true | derper 服务器主机名 | your-hostname.com |
| DERP\_CERT\_DIR | false | 存储 Let's Encrypt 证书的目录（如果地址的端口是：443） | /app/certs |
| DERP\_CERT\_MODE | false | 获取证书的模式。可能的选项：手动、Let's Encrypt | Let's Encrypt |
| DERP\_ADDR | false | 监听服务器地址 | :443 |
| DERP\_STUN | false | 同时运行一个 STUN 服务器 | true |
| DERP\_STUN\_PORT | false | 用于提供 STUN 服务的 UDP 端口。 | 3478 |
| DERP\_HTTP\_PORT | false | HTTP 服务的端口。设置为-1 以禁用 | 80 |
| DERP\_VERIFY\_CLIENTS | false | 通过本地 tailscaled 实例验证此 DERP 服务器上的客户端 | false |

# 使用方法

完全 DERP 设置官方文档：[https://tailscale.com/kb/1118/custom-derp-servers/](https://tailscale.com/kb/1118/custom-derp-servers/)