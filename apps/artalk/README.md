# 使用说明
## Artalk 设置账号密码

以下两种方式相同。

### 1. 宿主机
```
docker exec -it artalk artalk admin
```

- 修改`artalk`改为容器名
- 如 `1Panel-localartalk-tYWg`
- 更改后
```
docker exec -it 1Panel-localartalk-tYWg artalk admin
```

### 2. 面板执行

面板`容器`界面，连接容器终端，执行以下命令

```
artalk admin
```

# 原始相关
<p align="center">
<img src="https://user-images.githubusercontent.com/22412567/171680920-6e74b77c-c565-487b-bff1-4f94976ecbe7.png" alt="Artalk" width="100%">
</p>

# Artalk

[![](https://img.shields.io/npm/v/artalk.svg?style=flat-square)](https://www.npmjs.com/package/artalk)
[![](https://img.shields.io/npm/dt/artalk.svg?style=flat-square)](https://www.npmjs.com/package/artalk)
[![](https://badgen.net/bundlephobia/minzip/artalk?style=flat-square)](https://bundlephobia.com/package/artalk)
[![Docker Pulls](https://img.shields.io/docker/pulls/artalk/artalk-go?style=flat-square)](https://hub.docker.com/r/artalk/artalk-go)
[![CircleCI](https://circleci.com/gh/ArtalkJS/Artalk/tree/master.svg?style=svg)](https://circleci.com/gh/ArtalkJS/Artalk/tree/master)

> 🌌 Golang 自托管评论系统

[English](https://github.com/ArtalkJS/Artalk/blob/master/README.en.md) / [官方文档](https://artalk.js.org) / [最新版本](https://github.com/ArtalkJS/Artalk/releases)

---

- 🍃 轻量 (~30kB)
- 👨‍👧‍👦 安全 (自托管)
- 🐳 易上手 (防脱发)
- 🍱 Golang 后端 (快速 / 跨平台)
- 🌊 Vanilla × TypeScript × Vite (纯天然 / 无依赖)

## 特性

- 侧 边 栏 ：支持多站点集中化管理
- 通知中心：红点的标记 / 提及列表
- 身份验证：徽标自定义 / 密码验证
- 评论审核：反垃圾检测 / 频率限制
- 表情符号：插入表情包 / 快速导入
- 邮件提醒：模版自定义 / 多管理员
- 站点隔离：管理员分配 / 多个站点
- 页面管理：标题可显示 / 快速跳转
- 图片上传：上传到本地 / 多种图床
- 多元推送：支持 钉钉 飞书 TG
- 无限层级：可切换为平铺模式
- 评论投票：赞同还是反对评论
- 评论排序：按热度或时间排序
- 评论置顶：重要消息置顶显示
- 只看作者：仅显示作者的评论
- 说说模式：仅自己可发布评论
- 异步处理：发送评论无需等待
- 滚动加载：评论内容分页处置
- 自动保存：用户输入防丢功能
- 自动填充：用户链接自动填充
- 实时预览：评论内容实时预览
- 夜间模式：防止眼部疾病伤害
- 评论折叠：这个不打算给你康
- 数据备份：防止评论数据丢失
- 数据迁移：快速切换评论系统
- Markdown：默认支持 MD 语法
- 支持 Latex：提供集成 Katex 插件
- 使用 [Vite](https://github.com/vitejs/vite)：属于开发者的极致体验

更多内容请查看：[“**介绍文档**”](https://artalk.js.org/guide/intro.html)