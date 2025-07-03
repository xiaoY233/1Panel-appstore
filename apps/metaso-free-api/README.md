### 工具介绍

🚀 秘塔AI搜索逆向API【特长：超强检索超长输出】，支持高速流式输出、超强联网搜索（全网or学术以及简洁、深入、研究三种模式），零配置部署，多路token支持，仅供测试，如需商用请前往官方开放平台。

### 风险说明

- 逆向API是不稳定的，建议前往秘塔AI官方 https://metaso.cn/ 使用，避免封禁的风险。

- 本组织和个人不接受任何资金捐助和交易，此项目是纯粹研究交流学习性质！

- 仅限自用，禁止对外提供服务或商用，避免对官方造成服务压力，否则风险自担！


### 使用说明

从 [秘塔AI搜索](https://metaso.cn/) 获取uid和sid并使用-拼接：

进入秘塔AI搜索，登录账号（建议登录账号，否则可能遭遇奇怪的限制），然后F12打开开发者工具，从Application > Cookies中找到uid和sid的值。

将`uid`和`sid`拼接：`uid-sid`，如 `65e91a6b2bac5b600dd8526a-5e7acc465b114236a8d9de26c9f41846`

复制这个值填写到Lobechat或者CherryStudio等工具中，作为API密钥，API地址是你部署应用的IP加端口，例如:`https://192.168.1.105:8001/v1/chat/completions`，注意某些工具只需要填写`https://192.168.1.105:8001/`即可。

!获取Cookie](https://cdn.jsdelivr.net/gh/LLM-Red-Team/metaso-free-api@master/doc/example-0.png)

### 多账号接入

目前同个账号同时只能有*一路*输出，你可以通过提供多个账号的userToken value并使用`,`拼接提供：

```
API密钥：TOKEN1,TOKEN2,TOKEN3
```
每次请求服务会从中挑选一个。