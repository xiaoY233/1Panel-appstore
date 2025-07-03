# Arcane

Arcane 是一款现代化、开源的Docker管理Web面板，支持容器、镜像、网络等一站式管理。

## 功能特性

- 现代化Web界面，操作简洁直观
- 支持容器、镜像、网络、卷等Docker资源的可视化管理
- 支持多平台和多架构
- 支持堆栈（Stack）定义与管理
- 数据和设置持久化存储于 `./data` 目录
- 挂载Docker套接字，支持主机级管理

## 使用方法

1. 部署后访问 `http://服务器IP:3000` 进入Web管理界面
2. 首次使用请根据界面提示初始化设置
3. 数据目录：`./data`
4. 挂载宿主机 `/var/run/docker.sock`，实现容器管理
5. 环境变量 `PUBLIC_SESSION_SECRET`：用于会话加密，建议使用32位随机字符串，可在应用表单中自定义，默认值为 `arcane-session-4e2b8c7f9d1a6e3b2c5d7f8a1b0c9e6d`。如需更高安全性，可用 `openssl rand -base64 32` 生成。

### 账户密码

- 首次运行时，如果不存在用户，Arcane 会创建默认管理员用户。
  - **用户名:** `arcane`
  - **密码：** `arcane-admin`
  - 首次登录必须更改此密码。
- 要添加用户：转到**设置 → 用户管理**，然后单击**创建用户**。填写用户名、显示名称、电子邮件和密码。

## 安全提醒

- 挂载Docker套接字（/var/run/docker.sock）会赋予容器主机级管理权限，请确保安全使用！
- Arcane 目前为预发布软件，功能和界面可能会有较大变动。

## 相关链接

- [官方网站](https://arcane.ofkm.dev/)
- [GitHub 项目](https://github.com/ofkm/arcane)
- [官方文档](https://arcane.ofkm.dev/docs/)
- [Docker Hub](https://ghcr.io/ofkm/arcane) 