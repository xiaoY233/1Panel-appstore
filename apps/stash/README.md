# Stash

Stash 是一个用 Go 语言编写的自托管网络应用程序，它可以组织和服务您的媒体。


## 使用说明

假如需要公网访问，可以修改配置文件的以下项为`true`

```
dangerous_allow_public_without_auth: "true"
```

且以下值为空

```
security_tripwire_accessed_from_public_internet: ""
```