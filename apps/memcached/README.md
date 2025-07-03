# Memcached

Memcached 是一个高性能的多线程事件驱动的键值缓存存储，旨在用于分布式系统。

见：[https://memcached.org/about](https://memcached.org/about)

一个有趣的使用故事：[https://memcached.org/tutorial](https://memcached.org/tutorial)

如果遇到问题，请尝试查看 wiki：[https://memcached.org/wiki](https://memcached.org/wiki)

如果您在排查奇怪的行为或超时问题，请参阅： [https://memcached.org/timeouts](https://memcached.org/timeouts)

[https://memcached.org/](https://memcached.org/) 是一个很好的资源。请使用邮件列表提问，GitHub 问题不是每个人都能看到的！

## 依赖项

*   libevent - [https://www.monkey.org/~provos/libevent/](https://www.monkey.org/~provos/libevent/) (libevent-dev)
*   libseccomp（可选，实验性，仅限 Linux）- 用于更好的安全性能限制进程。仅在 x86-64 架构上经过测试。
*   openssl（可选）- 用于启用 TLS 支持。需要相对更新的版本。需要 pkg-config 来查找 openssl 依赖项（如-lz）。

## 环境

请注意，使用大缓存时，memcached 的 -k（mlockall）选项可能会很危险。确保 memcached 机器不要换页。memcached 进行非阻塞网络 I/O，但不进行磁盘 I/O。（它本应从未访问磁盘，否则就失去了其全部意义）

## 构建状态

请参阅 [https://build.memcached.org/](https://build.memcached.org/) 以查看多平台回归测试状态。

## Bug 报告

请在 GitHub 上使用问题跟踪器。

如果报告的是安全漏洞，请私下联系维护人员。我们遵循负责任的披露原则：私下处理报告，准备补丁，允许向供应商列表发送通知。然后发布修复版本，并在我们的版本说明和提交历史中给予您应有的信用。

## 网站

*   [https://www.memcached.org](https://www.memcached.org)

## 贡献

查看 [https://github.com/memcached/memcached/wiki/DevelopmentRepos](https://github.com/memcached/memcached/wiki/DevelopmentRepos)