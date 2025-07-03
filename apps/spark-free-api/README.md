### 工具介绍

🚀 讯飞星火大模型逆向API【特长：办公助手】，支持高速流式输出、智能体对话、联网搜索、AI绘图、长文档解读、图像解析、多轮对话，零配置部署，多路token支持，自动清理会话痕迹，仅供测试，如需商用请前往官方开放平台。

### 风险说明

- 逆向API是不稳定的，建议前往讯飞星火官方 https://xinghuo.xfyun.cn/sparkapi 付费使用API，避免封禁的风险。

- 本组织和个人不接受任何资金捐助和交易，此项目是纯粹研究交流学习性质！

- 仅限自用，禁止对外提供服务或商用，避免对官方造成服务压力，否则风险自担！


### 使用说明

从 [xinghuo.xfyun.cn](https://xinghuo.xfyun.cn/) 获取ssoSessionId

进入Spark登录并发起一个对话，从Cookie获取 ssoSessionId 值，由于星火平台禁用F12开发者工具，请安装 Cookie-Editor 浏览器插件查看你的Cookie。

复制Cookie填写到Lobechat或者CherryStudio等工具中，作为API密钥，API地址是你部署应用的IP加端口，例如:`https://192.168.1.105:8001/v1/chat/completions`，注意某些工具只需要填写`https://192.168.1.105:8001/`即可。

### 多账号接入

目前同个账号同时只能有*一路*输出，你可以通过提供多个账号的userToken value并使用`,`拼接提供：

```
API密钥：TOKEN1,TOKEN2,TOKEN3
```
每次请求服务会从中挑选一个。