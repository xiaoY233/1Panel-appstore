# 使用说明

管理界面位于 `https://IP:控制台端口/admin`，默认用户为 `openvpn` ，密码可以在 docker 日志中找到（在第一次初始运行时）

*   类似：

```
 Auto-generated pass = "Cj0YsADgHA6n". Setting in db...
```

* * *

![openvpn-as](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/OpenVPN_logo.svg/2560px-OpenVPN_logo.svg.png)

# OpenVPN 访问服务器

[openvpn-as](https://openvpn.net/access-server/) OpenVPN 访问服务器，我们的自助托管解决方案，通过基于网络的管理界面和内置的 OpenVPN Connect 应用分发功能（附带捆绑的连接配置文件），简化了安全远程访问和站点到站点解决方案的快速部署。

我们使用 OpenVPN 开源核心和 OpenSSL 等开源软件构建了 OpenVPN 访问服务器。这提供了对关键安全和协议功能的完全透明性。社区版使用自定义安全协议创建安全的 VPN 连接，该协议利用了 SSL/TLS。截至目前，社区版已有超过 6000 万次下载，是一个由社区支持的开源软件（OSS）项目。

OpenVPN 访问服务器保持与开源项目的兼容性，使部署的 VPN 立即可以在各种路由器和操作系统（包括 Linux）上与 OpenVPN 协议兼容的软件使用。官方的 OpenVPN Inc. 开发的客户端 OpenVPN Connect 可用于 Windows、macOS、Linux 和移动操作系统（Android 和 iOS）环境。