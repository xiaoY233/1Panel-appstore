# Clear

## 简洁之美，效率之选

### 项目简介

Clear 是一款现代化的待办事项管理应用，采用全栈架构设计，致力于为用户提供简洁、高效的任务管理体验。无论是个人日常规划还是团队协作，Clear 都能满足您的需求。

### 核心特性

- 精美界面，响应式设计，支持多种主题切换
- 智能管理：任务分类、标签系统、优先级设置
- 安全可靠：JWT认证，数据加密存储
- 高性能：前后端分离，API响应快速
- 极低资源占用：仅需4MB内存，50MB硬盘空间
- 数据独立：SQLite本地存储，数据完全掌控
- 容器化部署，支持 Docker 一键启动
- 跨平台支持，桌面端和移动端样式完美适配

### 技术栈

- 前端：Vue 3, TypeScript, Vite, Pinia, Element Plus
- 后端：Go 1.24+, Gin, GORM, SQLite, JWT
- 部署：Docker, Docker Compose, pnpm

### 快速开始

```
bash复制编辑git clone https://github.com/WindyDante/Clear.git
cd Clear
docker-compose up -d
```

访问地址: http://localhost:6277

### 部署推荐

建议使用 Releases 提供的预编译二进制或官方优化 Docker 镜像进行生产环境部署，稳定可靠。

### 未来规划

- 移动端原生应用
- 数据同步与消息推送
- 手势操作及离线模式
- 插件扩展及智能分类
- 团队协作与文件附件
- 多语言支持及界面优化

### 联系与支持

- 项目主页：https://github.com/WindyDante/Clear
- 在线体验：https://clear.1wind.cn/
- 提交问题与建议：GitHub Issues