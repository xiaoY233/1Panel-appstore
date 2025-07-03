# 使用说明

控制台默认账户密码

```
Email:    admin@example.com
Password: changeme
```

# 原始相关

![](https://nginxproxymanager.com/github.png)
![](https://img.shields.io/badge/version-2.10.3-green.svg?style=for-the-badge) [![](https://img.shields.io/docker/stars/jc21/nginx-proxy-manager.svg?style=for-the-badge) ](https://hub.docker.com/repository/docker/jc21/nginx-proxy-manager)[![](https://img.shields.io/docker/pulls/jc21/nginx-proxy-manager.svg?style=for-the-badge)](https://hub.docker.com/repository/docker/jc21/nginx-proxy-manager)

这个项目提供了一个预构建的 Docker 镜像，使你可以轻松地将流量转发到家中的网站或其他网站，包括免费的 SSL，无需深入了解 Nginx 或 Let's Encrypt。

*   [快速设置](#quick-setup)
*   [完整设置](https://nginxproxymanager.com/setup/)
*   [截图](https://nginxproxymanager.com/screenshots/)

## 项目目标

我创建这个项目是为了满足个人需求，为用户提供一种简单的方式来实现带有 SSL 终止的反向代理，并且必须简单到连猴子都能操作。这个目标没有改变。虽然可能有高级选项，但它们是可选的，项目应该尽可能简单，以便降低入门门槛。

[![Buy Me A Coffee](http://public.jc21.com/github/by-me-a-coffee.png)](https://www.buymeacoffee.com/jc21)

## 功能

*   基于 [Tabler](https://tabler.github.io/) 的美观且安全的管理界面
*   无需了解 Nginx，即可轻松创建转发域名、重定向、流媒体和 404 主机
*   免费使用 Let's Encrypt 生成 SSL 证书或提供您自己的自定义 SSL 证书
*   为您的主机提供访问列表和基本的 HTTP 认证
*   高级 Nginx 配置可供超级用户使用
*   用户管理、权限设置和审计日志

## 托管家庭网络

这里不会详细介绍，但这是初学者需要了解的基本知识。

1.  你的家庭路由器的某个地方会有端口转发设置。登录进去找到它。
2.  为托管此项目的服务器添加端口转发，端口号为80和443。
3.  配置你的域名详细信息，使其指向你的服务器，既可以使用静态 IP，也可以使用类似 DuckDNS 或 Amazon Route53 的服务
4.  使用 Nginx Proxy Manager 作为你的网关，将请求转发到你的其他基于 Web 的服务

## 快速设置

1.  安装 Docker 和 Docker-Compose

*   [Docker 安装文档](https://docs.docker.com/install/)
*   [Docker-Compose 安装文档](https://docs.docker.com/compose/install/)

2.  创建一个类似于以下内容的 docker-compose.yml 文件：

```yml
version: '3.8'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
```

这是所需的最小配置。更多信息请参见 [文档](https://nginxproxymanager.com/setup/) 。

3.  运行以下命令提升你的堆栈：

```bash
docker-compose up -d

# If using docker-compose-plugin
docker compose up -d

```

4.  登录 Admin UI

当你的 docker 容器运行时，在端口 `81` 连接到管理界面。有时这可能需要一点时间，因为密钥的随机性可能会有所不同。

[http://127.0.0.1:81](http://127.0.0.1:81)

默认管理员用户：

```
Email:    admin@example.com
Password: changeme
```

登录此默认用户后，系统会立即要求你修改个人信息并更改密码。

## 贡献者

特别感谢 [所有贡献者](https://github.com/NginxProxyManager/nginx-proxy-manager/graphs/contributors) 。

## 获取支持

1.  [发现 bug 了？](https://github.com/NginxProxyManager/nginx-proxy-manager/issues)
2.  [讨论](https://github.com/NginxProxyManager/nginx-proxy-manager/discussions)
3.  [开发 Gitter](https://gitter.im/nginx-proxy-manager/community)
4.  [Reddit](https://reddit.com/r/nginxproxymanager)