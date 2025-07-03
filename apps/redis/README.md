# Redis

Redis（Remote Dictionary Server）是一种开源的内存数据库，通常用作缓存系统或键值存储数据库。

![Redis](https://raw.githubusercontent.com/docker-library/docs/0e42ee108b46e1ba6333e9eb44201b8f26c4032d/redis/logo.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

Redis 通常被称为数据结构服务器。这意味着，Redis 可通过一系列命令访问可变数据结构，这些命令通过 TCP
套接字和简单协议以服务器-客户端模式发送。因此，不同进程可以通过共享方式查询和修改相同的数据结构。

Redis 中的数据结构具有一些特殊属性：

+ Redis 会将它们存储在磁盘上，即使它们总是在服务器内存中提供和修改。这意味着 Redis 不仅速度快，而且不易挥发。
+ 数据结构的实现强调内存效率，因此与使用高级编程语言建模的相同数据结构相比，Redis 中的数据结构使用的内存可能更少。
+ Redis 提供了许多在数据库中自然能找到的功能，如复制、可调整的耐用性级别、集群和高可用性。
  另一个很好的例子是，将 Redis 视为更复杂版本的 memcached，其中的操作不仅仅是 SET 和 GET，而是处理复杂数据类型（如列表、集合、有序数据结构等）的操作。

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
