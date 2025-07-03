# WhoDB 中文简介

**WhoDB** 是一个轻量级（<50MB）、高性能、界面友好的数据库管理工具，使用 GoLang 编写。它集成了自然语言接口，让你无需 SQL，就能用中文或英文对话操作数据库。

---

## ✨ 特性亮点

* **自然语言查询支持**：支持 ChatGPT、Ollama、Anthropic，无需 SQL！
* **直观界面**：操作简洁，轻松编辑数据、预览结果。
* **极速性能**：前端支持虚拟滚动，后端使用 GoLang 提升响应速度。
* **多库支持**：PostgreSQL、MySQL、SQLite、MongoDB、Redis、MariaDB、ElasticSearch。
* **数据库可视化**：图形化显示数据库结构。
* **Scratchpad 模式**：内置查询笔记区，类似 Jupyter Notebook。

---

## 🚀 快速开始

### 使用 Docker 一键运行：

```bash
docker run -it -p 8080:8080 clidey/whodb
```

或使用 Docker Compose：

```yaml
services:
  whodb:
    image: clidey/whodb
    ports:
      - "8080:8080"
    environment:
      - WHODB_OPENAI_API_KEY=你的key
      - WHODB_ANTHROPIC_API_KEY=你的key
```

访问：[http://localhost:8080](http://localhost:8080)

---

## 🛠️ 本地开发

* 需要安装 Go 和 PNPM。
* 前端：`cd frontend && pnpm install && pnpm start`
* 后端：`cd core && go run .`
* 如果无 `core/build`，需先构建前端再启动后端。

---

## 🔍 在线体验

* [试用演示](https://whodb.com/demo)
* [观看演示视频](https://youtu.be/hnAQcYYzcLo)
* [查看完整文档](https://whodb.com/docs/)

---

## 🙋 常见问题

* 比 Adminer 更现代，比 DBeaver 更轻量。
* 支持懒加载，处理大数据集不卡顿。
* 可部署在生产环境，建议根据实际情况评估。

---

## 🤝 参与贡献

欢迎提 Issue 或提交 PR：[贡献指南](https://github.com/clidey/whodb/blob/main/CONTRIBUTING.md)

---

## 📬 联系我们

如需帮助请联系：[support@clidey.com](mailto:support@clidey.com)