# 使用说明

必须要开启`https`的情况下才能正常注册登录账号。

按照要求创建账号，例如邮箱`admin@localhost.com`，

如果创建账号正常，则会提示除了邮箱外还可以复制对应`uuid`，

那么则需要执行相关命令激活此账号。

- 1. 宿主机执行的方式
```
# 邮箱方式
docker exec -it slink slink user:activate --email=admin@localhost.com
```
```
# uuid 方式
docker exec -it slink slink user:activate --uuid=<user-id>
```

- 2. 容器管理页面连接容器终端执行的方式
```
# 邮箱方式
slink user:activate --email=admin@localhost.com
```
```
# uuid 方式
slink user:activate --uuid=<user-id>
```

- 3. 有得到终端返回信息例如以下，则表示账号激活成功，可以正常登录了。

```
User `admin@localhost.com` has been activated ✓
```

***
# Slink: Image Sharing Platform

![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/andrii-kryvoviaz/slink/release.yml?logo=github)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/anirdev/slink?color=blue)
![Docker Pulls](https://img.shields.io/docker/pulls/anirdev/slink?logo=docker)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/andrii-kryvoviaz/slink/blob/main/LICENSE)

**Slink** is a self-hosted image sharing platform built with [Symfony](https://symfony.com/) and [SvelteKit](https://kit.svelte.dev/)️.

Solves the problem of sharing images with friends, family, and colleagues without relying on third-party services. It also offers a platform for artists to share their work with the community. Additionally, developers may find it useful for self-hosting screenshots of personal projects, which can then be used on GitHub, portfolios, blogs, etc.
