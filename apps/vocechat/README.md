# VoceChat 的 Web 客户端

![](https://voce.chat/apple-touch-icon.png)

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/privoce/vocechat-web/issues) ![GitHub issues](https://img.shields.io/github/issues-raw/Privoce/vocechat-web) ![GitHub](https://img.shields.io/github/license/privoce/vocechat-web) ![GitHub top language](https://img.shields.io/github/languages/top/privoce/vocechat-web) ![Docker Pulls](https://img.shields.io/docker/pulls/privoce/vocechat-server)

*   🎉 由 React & Redux Toolkit 提供动力
*   ✅ Typescript
*   📦 PWA
*   📢 通知

## 部署在您的服务器！或者使用我们的测试服务器

*   自行部署 Voce 服务器（[docker 镜像](https://hub.docker.com/r/privoce/vocechat-server/tags) ）：运行在 x86_64 平台上：

```bash
docker run -d --restart=always \
  -p 3000:3000 \
  --name vocechat-server \
  privoce/vocechat-server:latest
```

如需更多服务器托管说明，请参阅我们的文档：[https://doc.voce.chat/](https://doc.voce.chat/)

## 预览

*   官方网站: [https://voce.chat](https://voce.chat)
    
*   在线演示: [https://privoce.voce.chat/](https://privoce.voce.chat/)
    
*   演示 API 文档 (Swagger): [https://dev.voce.chat/api/swagger](https://dev.voce.chat/api/swagger)
    
*   设计: [https://www.figma.com/file/EHnNr53kNmDWgUT86It6CH/UI](https://www.figma.com/file/EHnNr53kNmDWgUT86It6CH/UI)
    
*   文本编辑器: [https://plate.udecode.io/docs/installation](https://plate.udecode.io/docs/installation)
    
*   Markdown 编辑器: [https://nhn.github.io/tui.editor/latest/](https://nhn.github.io/tui.editor/latest/)
    
*   redux: [@reduxjs/toolkit](https://redux-toolkit.js.org/introduction/getting-started)
    
*   indexDB 包装器: [https://github.com/localForage/localForage](https://github.com/localForage/localForage)
    

## 本地开发

*   `git clone https://github.com/Privoce/vocechat-web vocechat-web`
    
*   `cd vocechat-web & yarn install`
    
*   `yarn start`
    
*   打开 `localhost:3009`
    

### 推荐工具

*   [VS Code](https://code.visualstudio.com/) 编辑器推荐
*   VS Code 插件：
    *   [dbaeumer.vscode-eslint](#0): ESLint
    *   [esbenp.prettier-vscode](#0): Prettier
    *   [dsznajder.es7-react-js-snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets): 适用于 JS/TS 中的 React、React-Native 和 Redux 的 ES7+语法扩展

## 许可证

[GPL v3](https://github.com/Privoce/vocechat-web/blob/main/LICENSE)

## 感谢所有贡献者

[![](https://contrib.rocks/image?repo=privoce/vocechat-web)](https://github.com/privoce/vocechat-web/graphs/contributors)

讨论合作：[han@privoce.com](han@privoce.com) 或 [https://bridger.chat/han](https://bridger.chat/han)

Telegram 群组：[https://t.me/opencfdchannel](https://t.me/opencfdchannel) VoceChat：[https://voce.chat](https://voce.chat)

Telegram 频道: [https://t.me/vocechat_group](https://t.me/vocechat_group) VoceChat 频道: [https://privoce.voce.chat](https://privoce.voce.chat)