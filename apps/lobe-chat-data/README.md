# LobeChat 数据库版

## 安装注意事项

1. 第一次安装时，会提示安装失败，在应用商店点击重建即可；
2. 安装时，需要将默认的Your-IP修改为您的1Panel主机的IP；
3. 默认的端口号如非必要，请保持默认；
4. 安装成功后，需要登录Casdoor>身份认证>lobechat编辑，在重定向URLS中添加`http://Your-IP:3210/api/auth/callback/casdoor`,保存后即可用下面初始账号登录LobeChat
5. LobeChat更新频繁，应用已设置Latest版本想要体验新版本，点击重建即可。

## 初始账号密码

LobeChat: 
  - URL: http://Your-IP:3210 
  - Username: user 
  - Password: 123 
Casdoor: 
  - URL: http://Your-IP:8000 
  - Username: admin 
  - Password: 123

Minio: 
  - URL: http://Your-IP:9000 
  - Username: admin
  - Password: YOUR_MINIO_PASSWORD

## 简介

**LobeChat** 是一个现代化设计的开源 ChatGPT/LLMs 聊天应用与开发框架，支持语音合成、多模态、可扩展的（function call）插件系统，一键免费拥有你自己的 ChatGPT/Gemini/Claude/Ollama 应用。

Lobe Chat 支持两种部署模式：
- 客户端数据库模式：
该模式下数据均保留在用户本地，不会跨多端同步，也不支持文件上传、知识库等进阶功能。
- 服务端数据库模式：
该模式下会使用 PostgreSQL 作为数据库，数据会存储在服务端，支持跨多端同步，并提供文件上传、知识库等进阶功能。

本应用商店部署的是**服务端数据库版本**（PS：服务端数据库版本的配置脚本太难写了=-=，1Panel官网提供的是客户端数据库版本，功能不全）

![LobeChat](https://private-user-images.githubusercontent.com/34400653/411259329-9647f70f-b71b-43b6-9564-7cdd12d1c24d.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDIwOTg1MjQsIm5iZiI6MTc0MjA5ODIyNCwicGF0aCI6Ii8zNDQwMDY1My80MTEyNTkzMjktOTY0N2Y3MGYtYjcxYi00M2I2LTk1NjQtN2NkZDEyZDFjMjRkLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTAzMTYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwMzE2VDA0MTAyNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWM5NjNkZjg3NmE0M2M5OTc4OWVkZWYxNGFiZTQxNzM1YTJlNzg1ODllOGZjMTc4Nzg0MmEwYThiNDQ1MzRkZjcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.5u2ujzdC-1oZ3-vcrFhXCjEyx9hmpO7VVdGu6cBGYxo)

## 特性：

- 多模型服务商支持；
- 支持本地大语言模型 (LLM)；
- 模型视觉识别 (Model Visual)；
- TTS & STT 语音会话；
- Text to Image 文生图；
- 插件系统 (Function Calling)；
- 助手市场 (GPTs)；
- 支持本地 / 远程数据库；
- 支持多用户管理；
- 渐进式 Web 应用 (PWA)；
- 移动设备适配；
- 自定义主题。