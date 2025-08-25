# PanSou 网盘搜索 API

PanSou 是一个高性能的网盘资源搜索 API 服务，支持 Telegram 搜索和自定义插件扩展，系统以性能和可扩展性为核心，支持并发搜索、结果智能排序和多网盘类型分类。

## ✨ 特性
- **高性能搜索**：并发执行多个 Telegram 频道及插件搜索，显著提升搜索速度
- **多网盘类型分类**：自动识别百度网盘、阿里云盘、夸克网盘等多种链接
- **智能排序**：基于插件等级、时间新鲜度和关键词权重的综合排序
- **异步插件系统**：支持“尽快响应，持续处理”的搜索模式
- **二级缓存**：内存 + 磁盘分片缓存机制，大幅提升重复查询性能

## 🛠 支持的网盘类型
百度网盘、阿里云盘、夸克网盘、天翼云盘、UC网盘、移动云盘、115网盘、PikPak、迅雷网盘、123网盘、磁力链接、电驴链接等。

## 🚀 快速开始

### 使用 Docker 部署（前后端一体）
```bash
docker run -d --name pansou -p 80:80 ghcr.io/fish2018/pansou-web
```

### 使用 Docker Compose（推荐）

```bash
curl -o docker-compose.yml https://raw.githubusercontent.com/fish2018/pansou-web/refs/heads/main/docker-compose.yml
docker-compose up -d
```

### 仅后端 API

```bash
docker run -d --name pansou -p 8888:8888 -v pansou-cache:/app/cache -e CHANNELS="tgsearchers2,xxx" ghcr.io/fish2018/pansou:latest
```

## 📚 API 文档

### 搜索 API

- 接口：`/api/search`
- 方法：`POST` / `GET`
- 参数：
  - `kw`：搜索关键词
  - `channels`：搜索的频道
  - `cloud_types`：网盘类型过滤
  - 更多详见[项目文档](https://github.com/fish2018/pansou)

### 健康检查 API

- 接口：`/api/health`
- 方法：`GET`

## 🔗 项目地址

- GitHub: https://github.com/fish2018/pansou
- 文档: https://github.com/fish2018/pansou