# Samba

A [Docker](http://docker.com) file to build images for many platforms (linux/amd64, linux/arm64, linux/ppc64le, linux/s390x, linux/386, linux/arm/v7, linux/arm/v6) with a installation of [Samba](https://www.samba.org/) that is the standard Windows interoperability suite of programs for Linux and Unix. This is my own Multi-architecture docker recipe.

## 使用说明

Container will be configured as samba sharing server and it just needs:  
容器将被配置为 samba 共享服务器，它只需要：

- host directories to be mounted,  
    要挂载的主机目录，
- users (one or more uid:gid:username:usergroup:password tuples) provided,  
    提供的用户（一个或多个 uid:gid:用户名:用户组:密码元组），
- shares defined (name, path, users).  
    定义的共享（名称、路径、用户）。

\-u uid:gid:username:usergroup:password  
\-u uid:gid:用户名:用户组:密码

- uid from user p.e. 1000  
    用户 p.e. 的 uid 1000
- gid from group that user belong p.e. 1000  
    来自用户所属组的 gid p.e. 1000
- username p.e. alice 用户名爱丽丝
- usergroup (the one to whom user belongs) p.e. alice  
    用户组（用户所属的组）p.e.爱丽丝
- password (The password may be different from the user's actual password from your host filesystem)  
    密码（该密码可能与主机文件系统中用户的实际密码不同）

\-s name:path:rw:user1\[,user2\[,userN\]\]  
\-s 名称:路径:rw:用户1\[,用户2\[,用户N\]\]

- add share, that is visible as 'name', exposing contents of 'path' directory for read+write (rw) or read-only (ro) access for specified logins user1, user2, .., userN  
    添加共享，即显示为“名称”，公开“路径”目录的内容，以供指定登录 user1、user2、..、userN 进行读+写 (rw) 或只读 (ro) 访问
