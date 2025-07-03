## WUD（What’s Up Docker）简介

WUD（What’s Up Docker）是一个开源的Docker容器更新监测工具，它可以监测Docker Hub上的容器镜像是否有更新，并且可以通过邮件、Slack等方式通知用户

## 实用介绍

- 默认账号：admin
- 默认密码：Wub

如何想要修改账号密码请在配置时修改参数，注意：密码使用的是Htpasswd加密的密码，可以使用命令生成

```
htpasswd -nib admin Wub
```
或使用在线工具进行生成
[https://htpasswd.utils.com/](https://htpasswd.utils.com/)