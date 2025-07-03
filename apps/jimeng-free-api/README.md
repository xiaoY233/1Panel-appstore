### 工具介绍

🚀 即梦3.0逆向API【特长：图像生成顶流】，零配置部署，多路token支持，仅供测试，如需商用请前往官方开放平台.

### 风险说明

- 逆向 API 是不稳定的，建议前往即梦 AI 官方 https://jimeng.jianying.com/ 体验功能，避免封禁的风险。

- 本组织和个人不接受任何资金捐助和交易，此项目是纯粹研究交流学习性质！

- 仅限自用，禁止对外提供服务或商用，避免对官方造成服务压力，否则风险自担！


### 使用说明

从 [即梦](https://jimeng.jianying.com/) 获取 sessionid

进入即梦登录账号，然后 F12 打开开发者工具，从 Application > Cookies 中找到sessionid的值，复制这个值填写到Lobechat或者CherryStudio等工具中，作为API密钥，API地址是你部署应用的IP加端口，例如:`https://192.168.1.105:8001/v1/chat/completions`，注意某些工具只需要填写`https://192.168.1.105:8001/`即可。

![获取sessionid](https://cdn.jsdelivr.net/gh/LLM-Red-Team/jimeng-free-api@master/doc/example-0.png)

### 多账号接入

目前同个账号同时只能有*一路*输出，你可以通过提供多个账号的userToken value并使用`,`拼接提供：

```
API密钥：TOKEN1,TOKEN2,TOKEN3
```
每次请求服务会从中挑选一个。

### 效果展示
```
可爱的熊猫漫画，熊猫看到地上有一个叫“即梦”的时间机器，然后说了一句“我借用一下没事吧”
```
![效果展示](https://cdn.jsdelivr.net/gh/LLM-Red-Team/jimeng-free-api@master/doc/example-1.jpeg)
