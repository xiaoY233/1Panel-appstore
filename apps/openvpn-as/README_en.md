# 使用说明

管理界面位于 `https://IP:控制台端口/admin`，默认用户为 `openvpn` ，密码可以在 docker 日志中找到（在第一次初始运行时）
- 类似：
```
 Auto-generated pass = "Cj0YsADgHA6n". Setting in db...
```
***

![openvpn-as](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/OpenVPN_logo.svg/2560px-OpenVPN_logo.svg.png)
# OpenVPN Access Server

[Openvpn-as](https://openvpn.net/access-server/) OpenVPN Access Server, our self-hosted solution, simplifies the rapid deployment of a secure remote access and site-to-site solution with a web-based administration interface and built-in OpenVPN Connect app distribution with bundled connection profiles.

We built OpenVPN Access Server using the OpenVPN open source core and additional open source software like OpenSSL. This provides full transparency of the critical security and protocol functionality. The community edition creates secure VPN connections using a custom security protocol that utilizes SSL/TLS. With over 60 million downloads to date, the community edition is a community-supported OSS (open-source software) project.

OpenVPN Access Server maintains compatibility with the open source project, making the deployed VPN immediately usable with OpenVPN protocol-compatible software on various routers and operating systems, as well as Linux. The official OpenVPN Inc.- developed client, OpenVPN Connect, is available for Windows, macOS, Linux, and mobile OS (Android and iOS) environments.
