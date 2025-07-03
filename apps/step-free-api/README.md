### 工具介绍

🚀 阶跃星辰跃问YueWen Step 多模态大模型逆向API【特长：超强多模态】，支持高速流式输出、联网搜索、长文档解读、图像解析、多轮对话，零配置部署，多路token支持，自动清理会话痕迹，仅供测试，如需商用请前往官方开放平台。

### 风险说明

- 逆向API是不稳定的，建议前往阶跃星辰官方 https://platform.stepfun.com/ 付费使用API，避免封禁的风险。

- 本组织和个人不接受任何资金捐助和交易，此项目是纯粹研究交流学习性质！

- 仅限自用，禁止对外提供服务或商用，避免对官方造成服务压力，否则风险自担！


### 使用说明

从 [yuewen.cn](https://yuewen.cn/) 获取deviceId和Oasis-Token

进入StepChat随便发起一个对话，然后F12打开开发者工具。
1. 从Application > LocalStorage中找到 deviceId 的值（去除双引号），如：`267bcc81a01c2032a11a3fc6ec3e372c380eb9d1`
![获取deviceId](https://cdn.jsdelivr.net/gh/LLM-Red-Team/step-free-api@master/doc/example-7.png)

2. 从Application > Cookies中找到 Oasis-Token 的值，如：`eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`
![获取Oasis-Token](https://cdn.jsdelivr.net/gh/LLM-Red-Team/step-free-api@master/doc/example-5.png)

3. 将 `eviceId` 和 `Oasis-Token` 使用 `@` 拼接为Token，复制Token填写到Lobechat或者CherryStudio等工具中，作为API密钥，API地址是你部署应用的IP加端口，例如:`https://192.168.1.105:8001/v1/chat/completions`，注意某些工具只需要填写`https://192.168.1.105:8001/`即可。

### 多账号接入

目前同个账号同时只能有*一路*输出，你可以通过提供多个账号的userToken value并使用`,`拼接提供：

```
API密钥：TOKEN1,TOKEN2,TOKEN3
```
每次请求服务会从中挑选一个。