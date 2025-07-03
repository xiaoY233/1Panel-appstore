# Docker Autoheal

监控并重启不健康的 Docker 容器。此功能曾提议在增加 \``HEALTHCHECK`\` 后包含进来，但最终未能实现。此容器是一个临时替代品，直到有原生支持 \``--exit-on-unhealthy`\`[https://github.com/docker/docker/pull/22719](https://github.com/docker/docker/pull/22719)。

## 支持的标签和 Dockerfile 链接

*   [`latest` (*Dockerfile*)](https://github.com/willfarrell/docker-autoheal/blob/main/Dockerfile) - 每日构建
*   [`1.1.0` (*Dockerfile*)](https://github.com/willfarrell/docker-autoheal/blob/1.1.0/Dockerfile)
*   [`v0.7.0` (*Dockerfile*)](https://github.com/willfarrell/docker-autoheal/blob/v0.7.0/Dockerfile)

![](https://img.shields.io/docker/pulls/willfarrell/autoheal "Total docker pulls") [![](https://images.microbadger.com/badges/image/willfarrell/autoheal.svg)](http://microbadger.com/images/willfarrell/autoheal "Docker layer breakdown")

## 如何使用

### UNIX 套接字透传

```bash
docker run -d \
    --name autoheal \
    --restart=always \
    -e AUTOHEAL_CONTAINER_LABEL=all \
    -v /var/run/docker.sock:/var/run/docker.sock \
    willfarrell/autoheal
```

### TCP socket

```bash
docker run -d \
    --name autoheal \
    --restart=always \
    -e AUTOHEAL_CONTAINER_LABEL=all \
    -e DOCKER_SOCK=tcp://HOST:PORT \
    -v /path/to/certs/:/certs/:ro \
    willfarrell/autoheal
```

a) 在你的容器上应用标签 \``autoheal=true`\` 以使其被监控。

b) 设置环境变量 \``AUTOHEAL_CONTAINER_LABEL=all`\` 以监控所有运行中的容器。

c) 设置环境变量 \``AUTOHEAL_CONTAINER_LABEL`\` 为具有值 \``true`\` 的现有标签名称。

注意：您必须首先将 `HEALTHCHECK` 应用于您的 Docker 镜像。详情请参阅 [https://docs.docker.com/engine/reference/builder/#healthcheck](https://docs.docker.com/engine/reference/builder/#healthcheck)。有关如何使用 mTLS 配置 TCP，请参阅 [https://docs.docker.com/engine/security/https/](https://docs.docker.com/engine/security/https/)。

证书和密钥需要以下名称：

*   ca.pem
*   client-cert.pem
*   client-key.pem

### 更改时区

如果需要时区与本地机器一致，可以将 `/etc/localtime` 映射到容器中。

```
docker run ... -v /etc/localtime:/etc/localtime:ro
```

## ENV 默认设置

```
AUTOHEAL_CONTAINER_LABEL=autoheal
AUTOHEAL_INTERVAL=5   # check every 5 seconds
AUTOHEAL_START_PERIOD=0   # wait 0 seconds before first health check
AUTOHEAL_DEFAULT_STOP_TIMEOUT=10   # Docker waits max 10 seconds (the Docker default) for a container to stop before killing during restarts (container overridable via label, see below)
DOCKER_SOCK=/var/run/docker.sock   # Unix socket for curl requests to Docker API
CURL_TIMEOUT=30     # --max-time seconds for curl requests to Docker API
WEBHOOK_URL=""    # post message to the webhook if a container was restarted (or restart failed)
```

### 可选容器标签

```
autoheal.stop.timeout=20        # Per containers override for stop timeout seconds during restart
```

## 测试

```bash
docker build -t autoheal .

docker run -d \
    -e AUTOHEAL_CONTAINER_LABEL=all \
    -v /var/run/docker.sock:/var/run/docker.sock \
    autoheal                                                                        
```