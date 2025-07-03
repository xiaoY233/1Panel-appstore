# 简介

chatgpt-on-wechat（简称CoW）项目是基于大模型的智能对话机器人，支持微信公众号、企业微信应用、飞书、钉钉接入，可选择GPT3.5/GPT4.0/Claude/Gemini/LinkAI/ChatGLM/KIMI/文心一言/讯飞星火/通义千问/LinkAI，能处理文本、语音和图片，通过插件访问操作系统和互联网等外部资源，支持基于自有知识库定制企业AI应用。


## 使用说明

参数相关设置与获取注意查看原始文档：

- https://github.com/zhayujie/chatgpt-on-wechat/blob/master/config.py

- https://docs.link-ai.tech/cow


**由于`1Panel`自动生成的`.env`文件里的引号为双引号，直接部署会出现异常，**

**需要手动修改一下，将产生异常的行，最外面的双引号修改为单引号，重建应用即可。**

如

```
GROUP_CHAT_IN_ONE_SESSION='["ChatGPT测试群"]'
GROUP_CHAT_PREFIX='["@bot"]'
GROUP_NAME_WHITE_LIST='["ChatGPT测试群", "ChatGPT测试群2"]'
IMAGE_CREATE_PREFIX='["画", "看", "找"]'
SINGLE_CHAT_PREFIX='["bot", "@bot"]'
SINGLE_CHAT_REPLY_PREFIX='[bot] '
```

文件路径，按需修改
```
/opt/1panel/apps/local/chatgpt-on-wechat/chatgpt-on-wechat/.env
```