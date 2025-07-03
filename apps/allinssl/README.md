# All in SSL - SSL证书全流程管理工具 🔒

🚀 一站式SSL证书生命周期管理解决方案 | 支持 Let's Encrypt、ZeroSSL、Google、SSL.COM、BuyPass 等多家 CA | 多平台部署 | 自动化运维

---

## 📌 项目亮点

- ✅ 全自动证书申请/续期
- 🌐 多平台部署（CDN / WAF / 面板 / 云存储）
- 🔔 证书过期监控与通知
- 🛡️ 安全入口保护
- 📊 可视化证书管理界面

---

## 🚧 开发路线图

- 持续完善自动化流程和多云服务集成
- 增强监控与告警功能
- 支持更多DNS及主机提供商
- 优化用户体验和安全机制

欢迎通过 [GitHub Issues](https://github.com/allinssl/allinssl/issues) 提出建议！

---

## 🚀 快速开始

### 系统要求

- Linux、macOS、Windows（部分功能限制）
- Docker 环境（推荐）

### 极速安装

```bash
curl -sSO http://download.allinssl.com/install_allinssl.sh && bash install_allinssl.sh allinssl
```

备用安装：

```bash
curl -sSO https://cnb.cool/allinssl/install.sh/-/git/raw/main/install_allinssl.sh && bash install_allinssl.sh allinssl
```

### Docker 安装示例

```bash
docker run -itd \
  --name allinssl \
  -p 7979:8888 \
  -v /www/allinssl/data:/www/allinssl/data \
  -e ALLINSSL_USER=allinssl \
  -e ALLINSSL_PWD=allinssldocker \
  -e ALLINSSL_URL=allinssl \
  -e TZ=Asia/Shanghai \
  allinssl/allinssl:latest
```

### 二进制文件安装

1. 访问 [Releases](https://github.com/allinssl/allinssl/releases) 页面下载最新版本
2. 解压并进入目录
3. 启动服务：

   * Linux/macOS: `./allinssl start`
   * Windows: `.\allinssl start`
4. 访问 `http://your-server-ip:port/` 使用账号密码登录

---

## 🎯 核心功能

### 证书管理

| 功能    | 支持提供商                          |
| ----- | ------------------------------ |
| DNS验证 | 阿里云、腾讯云、Cloudflare 等多家 DNS 提供商 |
| 证书部署  | 宝塔面板、1Panel、阿里云 CDN、腾讯云 COS 等  |
| 监控通知  | 邮件、Webhook、钉钉                  |

### 自动化流程

* 证书自动申请、续期、部署
* 证书状态监控与预警
* 安全认证入口与访问控制

---

## 🛠️ 技术架构

* 后端：Go (Gin 框架)，SQLite，ACME客户端 lego
* 前端：Vue 3 + Naive UI + Vite
* 云服务集成支持多家厂商 SDK
* 容器化部署支持 Docker

---

## 💻 常用命令行操作

| 命令          | 功能                |
| ----------- | ----------------- |
| allinssl 1  | 启动服务              |
| allinssl 2  | 停止服务              |
| allinssl 3  | 重启服务              |
| allinssl 4  | 修改安全入口            |
| allinssl 5  | 修改用户名             |
| allinssl 6  | 修改密码              |
| allinssl 7  | 修改端口              |
| allinssl 8  | 关闭 Web 服务         |
| allinssl 9  | 开启 Web 服务         |
| allinssl 10 | 重启 Web 服务         |
| allinssl 11 | 关闭后台自动调度          |
| allinssl 12 | 开启后台自动调度          |
| allinssl 13 | 重启后台自动调度          |
| allinssl 14 | 关闭 HTTPS          |
| allinssl 15 | 获取面板地址            |
| allinssl 16 | 更新 ALLinSSL 到最新版本 |
| allinssl 17 | 卸载 ALLinSSL       |

---

## 🤝 参与贡献

欢迎通过提交 Issue、Pull Request、完善文档和分享使用案例参与项目。

---

## 📞 联系我们

* QQ交流群：768610151
* 邮箱：[support@allinssl.com](mailto:support@allinssl.com)
* 问题反馈：[GitHub Issues](https://github.com/allinssl/allinssl/issues)

---

## 📜 许可证

本项目采用 AGPL-3.0 许可协议开源。

---

## 致谢

感谢开源社区及相关项目的贡献，包括 Let's Encrypt、lego、acme.sh、Certbot、Caddy 等。
