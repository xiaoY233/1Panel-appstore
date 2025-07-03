# Vaultwarden

Vaultwarden 是一个轻量、开源的 Bitwarden 服务端实现，适用于资源有限的自托管环境。它提供密码管理、TOTP、密码生成器、附件上传等核心功能，并支持 Web、移动和浏览器扩展客户端。

------

## ✨ 特性

- ✅ 兼容 [Bitwarden 官方客户端](https://bitwarden.com/)
- 🧠 支持 TOTP 两步验证、密码生成器、密码分享等功能
- 🪶 轻量级，仅需极少系统资源
- 📁 支持附件存储与文件上传
- 🔐 多用户支持、组织功能、审计日志（可选启用）
- 📦 支持 SQLite、MySQL、PostgreSQL 后端

------

## 🚀 快速开始（Docker 部署）

```
bash复制编辑docker run -d \
  --name vaultwarden \
  -e ADMIN_TOKEN='your_admin_token' \
  -v ./vw-data:/data \
  -p 8222:80 \
  vaultwarden/server:latest
```

- 默认 Web 服务端口：`80`
- 持久化数据存储路径：`/data`
- 设置 `ADMIN_TOKEN` 后访问 `/admin` 管理面板

------

## 📦 支持环境变量（示例）

| 变量名            | 描述                       | 是否必填            |
| ----------------- | -------------------------- | ------------------- |
| `ADMIN_TOKEN`     | 后台管理口令               | 否（建议设置）      |
| `DOMAIN`          | 自定义访问域名             | 否                  |
| `ROCKET_PORT`     | HTTP 服务端口              | 否，默认 `80`       |
| `DATABASE_URL`    | 数据库连接地址             | 否，默认使用 SQLite |
| `SIGNUPS_ALLOWED` | 是否允许注册（true/false） | 否                  |



------

## 🔐 访问地址

部署完成后，请访问：

```
cpp


复制编辑
http://<服务器地址>:端口
```

如果设置了 `ADMIN_TOKEN`，可通过 `http://<服务器地址>:端口/admin` 访问管理后台。