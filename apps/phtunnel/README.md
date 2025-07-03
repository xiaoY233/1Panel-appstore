# 花生壳

花生壳内网穿透

## 使用说明

1. 部署完成后连接容器终端执行命令，获取`SN码`

```
phddns status
```

或者宿主机执行
```
# 按需修改容器名
docker exec 容器名 phddns status
```

1. 访问[官网](https://b.oray.com/)用`SN码`与默认登录密码`admin`登录，绑定账号添加内网穿透服务。

**官方教程：**
> [Docker - 花生壳内网穿透教程](https://service.oray.com/question/36626.html)