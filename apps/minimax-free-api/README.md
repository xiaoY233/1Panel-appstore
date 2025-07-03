### 工具介绍

🚀 MiniMax大模型海螺AI逆向API【特长：超自然语音】，支持MiniMax Text-01、MiniMax-VL-01模型，支持高速流式输出、语音合成、联网搜索、长文档解读、图像解析、多轮对话，零配置部署，多路token支持，自动清理会话痕迹，仅供测试，如需商用请前往官方开放平台。

### 风险说明

- 逆向API是不稳定的，建议前往MiniMax官方 https://www.minimaxi.com/platform 付费使用API，避免封禁的风险。

- 本组织和个人不接受任何资金捐助和交易，此项目是纯粹研究交流学习性质！

- 仅限自用，禁止对外提供服务或商用，避免对官方造成服务压力，否则风险自担！


### 使用说明

从 海螺AI 获取token

进入海螺AI随便发起一个对话，然后F12打开开发者工具，从Application > LocalStorage中找到_token的值，复制该值填写到Lobechat或者CherryStudio等工具中，作为API密钥，API地址是你部署应用的IP加端口，例如:`https://192.168.1.105:8001/v1/chat/completions`，注意某些工具只需要填写`https://192.168.1.105:8001/`即可。

### 多账号接入

目前同个账号同时只能有*一路*输出，你可以通过提供多个账号的userToken value并使用`,`拼接提供：

```
API密钥：TOKEN1,TOKEN2,TOKEN3
```
每次请求服务会从中挑选一个。