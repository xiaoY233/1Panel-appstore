# GoWebDAV

> 使用 WebDAV 分享本地文件，轻量、易于使用

[English](https://github.com/117503445/GoWebDAV/blob/master/README.md) | 简体中文

## 特性

- 基于 Golang 实现，性能高。

- 最终编译为单二进制文件，不需要 Apache 等环境，依赖少。

- 支持浏览器访问。

- 可以在同个端口下启用多个 WebDAV 服务，各自有不同的挂载目录、用户名密码。

- 良好的 Docker 支持。

## 安全

GoWebDAV 使用 HTTP Basic Auth 进行验证，账号密码未经加密，毫无安全性可言。如果涉及重要文件、重要密码，请务必用 Nginx 或 Traefik 等代理服务器套一层 HTTPS。

GoWebDAV 目前没有直接支持 HTTPS 的计划，因为我认为 HTTPS 涉及域名、证书定期申请，这些工作都应当在上层代理服务器中完成。

## 使用

```sh
./gowebdav --help # 查看帮助

./gowebdav --addr 127.0.0.1 # 在 127.0.0.1 监听，默认监听 0.0.0.0
./gowebdav --port 8080 # 在 8080 端口监听，默认监听 80 端口

./gowebdav --dav "/dir1,/data/dir1,user1,pass1,true" # 配置文件夹路径及属性
```

`dav` 参数可以指定 WebDAV 服务的本地路径、用户验证、是否只读等属性。

每个本地路径都可以配置一个 WebDAV 服务，使用分号分隔。例子：

- `"/dir1,/data/dir1,user1,pass1,true;/dir2,/data/dir2,null,null,false"` 描述了 2 个服务，分别是将文件夹 `/data/dir1` 映射至 WebDAV 服务 `/dir1`，将文件夹 `/data/dir2` 映射至 WebDAV 服务 `/dir2`。

对于每个服务，需要使用逗号分隔 5 个参数，分别是 `服务路径,本地路径,用户名,密码,是否只读`。其中用户名和密码都为 `null` 时表示不需要验证。例子：

- `"/dir1,/data/dir1,user1,pass1,true"` 描述了将 `/data/dir1` 映射至 `/dir1` 服务，访问需要的用户名和密码分别为 `user1` 和 `pass1`，只读(禁止上传、更新、删除)。
- `"/dir2,/data/dir2,null,null,false"` 描述了将 `/data/dir2` 映射至 `/dir2` 服务，访问不需要验证，可读写。
- `"/dir3,/data/dir3,null,null,true"` 描述了将 `/data/dir3` 映射至 `/dir3` 服务，访问不需要验证，只读。

特别的，如果只有 1 个服务且名为 `/`，则可以直接访问 <http://localhost:80> 而不需要指定服务名。例子：

- `"/,/data/dir1,user1,pass1,true"` 描述了将 `/data/dir1` 映射至 `/` 服务，访问需要的用户名和密码分别为 `user1` 和 `pass1`，只读。

当 `dav` 未指定时，GoWebDAV 默认使用的 `dav` 参数为 `/public-writable,./data/public-writable,null,null,false;/public-readonly,./data/public-readonly,null,null,true;/private-writable,./data/private-writable,user1,pass1,false`。
