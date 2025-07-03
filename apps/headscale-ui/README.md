# 使用说明

**Headscale 服务器地址，只能用经过域名反向代理的地址。**

# 原始相关

* * *

# Headscale-UI

一个适用于 [headscale](https://github.com/juanfont/headscale) Tailscale 兼容协调服务器的网页前端。

## 安装

Headscale-UI 目前以静态站点的形式发布：只需获取发布版本，并用您喜欢的网页服务器进行托管。Headscale-UI 预期将从 `/web` 路径提供服务，以避免与同一域名上的 headscale 发生冲突。请注意，由于 CORS（见 [https://github.com/juanfont/headscale/issues/623](https://github.com/juanfont/headscale/issues/623)），headscale UI *必须* 在同一子域名上提供服务，或者通过反向代理注入 CORS 标头。

### Docker 安装

如果您使用 docker，可以像这样安装 `headscale` 和 `headscale-ui`：

```yaml
version: '3.5'
services:
  headscale:
    image: headscale/headscale:latest
    container_name: headscale
    volumes:
      - ./container-config:/etc/headscale
      - ./container-data/data:/var/lib/headscale
    # ports:
      # - 27896:8080
    command: headscale serve
    restart: unless-stopped
  headscale-ui:
    image: ghcr.io/gurucomputing/headscale-ui:latest
    restart: unless-stopped
    container_name: headscale-ui
    # ports:
      # - 9443:443
```

Headscale UI 在 443 端口上运行，默认使用自签名的证书。您需要在 `container-config` 文件夹下添加一个 `config.yaml` 文件，以便 `headscale` 声明所有必需的设置。官方 `headscale` 仓库的一个示例[在这里](https://github.com/juanfont/headscale/blob/main/config-example.yaml) 。

### 额外的 Docker 设置

Docker 容器允许您设置以下设置：

| 变量 | 描述 | 示例 |
| --- | --- | --- |
| HTTP\_PORT | 设置 HTTP 端口号为其他值 | 80 |
| HTTPS\_PORT | 设置 HTTPS 端口号为其他值 | 443 |

### 代理设置

您需要在您的域名上安装 `headscale-ui` 时需要一个反向代理。以下是一个实现此功能的示例 [Caddy 配置](https://caddyserver.com/) ：

```
https://hs.yourdomain.com.au {
	reverse_proxy /web* https://headscale-ui {
		transport http {
			tls_insecure_skip_verify
		}
	}

	reverse_proxy * http://headscale:8080
}


```

### 跨域安装

如果您不想在与 headscale 相同的子域名上配置 headscale-ui，您必须通过反向代理拦截 headscale 流量以修复 CORS（见 [https://github.com/juanfont/headscale/issues/623](https://github.com/juanfont/headscale/issues/623)）。以下是一个使用 Caddy 的示例修复，将您的 headscale UI 域名替换为 `hs-ui.yourdomain.com.au`：

```
https://hs.yourdomain.com.au {
	@hs-options {
		host hs.yourdomain.com.au
		method OPTIONS
	}
	@hs-other {
		host hs.yourdomain.com.au
	}
	handle @hs-options {
		header {
			Access-Control-Allow-Origin https://hs-ui.yourdomain.au
			Access-Control-Allow-Headers *
			Access-Control-Allow-Methods "POST, GET, OPTIONS, DELETE"
		}
		respond 204
	}
	handle @hs-other {
		reverse_proxy http://headscale:8080 {
			header_down Access-Control-Allow-Origin https://hs-ui.yourdomain.com.au
			header_down Access-Control-Allow-Methods "POST, GET, OPTIONS, DELETE"
			header_down Access-Control-Allow-Headers *
		}
	}
}

```

### 其他配置

查看[其他配置](https://github.com/gurucomputing/headscale-ui/blob/master/documentation/configuration.md)以获取更多代理示例，例如 Traefik

## 版本控制

以下版本对应适当的 Headscale 版本

| Headscale 版本 | HS-UI 版本 |
| --- | --- |
| 19+ | 2023-01-30+ |
| <19 | <2023-01-30 |

## 故障排除

请确保您正在使用最新的 headscale 版本。Headscale-UI 仅针对以下版本进行测试：

*   当前 headscale 的稳定版本
*   Chrome/Chrome 移动版
*   Firefox/Firefox 移动版

请注意，虽然已检查移动版的功能，但网页体验并未针对移动设备进行优化。

如果您收到有关预检检查的错误，这可能是 CORS 相关的问题。请确保您的 UI 位于与 headscale 相同的子域名上，或者注入 CORS 头。

### 与“缺少 Bearer 前缀”相关的错误

您的 API 密钥可能未保存，或者您尚未配置反向代理。在 `headscale`（通过命令行）中使用 `headscale apikeys create` 或 `docker exec <headscale container> headscale apikeys create` 创建 API 密钥，并将其保存在`设置`中。

HS-UI *必须*在与 headscale 相同的子域名上运行或您需要配置 CORS。是的，您需要使用反向代理来完成此操作。使用反向代理。如果您尝试使用原始 IP 和端口，它*将不会工作* 。

## 安全

详情见[安全](https://github.com/gurucomputing/headscale-ui/blob/master/SECURITY.md)

## 开发

详情见[开发](https://github.com/gurucomputing/headscale-ui/blob/master/documentation/development.md)

## 风格指南

查看[样式](https://github.com/gurucomputing/headscale-ui/blob/master/documentation/style.md)详情

## 架构

查看[架构](https://github.com/gurucomputing/headscale-ui/blob/master/documentation/architecture.md)详情