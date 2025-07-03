<div align="center">
    <br>
    <a href="https://github.com/sissbruecker/linkding">
        <img src="https://github.com/sissbruecker/linkding/raw/master/docs/header.svg" height="50">
    </a>
    <br>
</div>

## 创建初始化用户

- 宿主机终端方式
```shell
docker exec -it xxx python manage.py createsuperuser --username=用户名 --email=邮箱
```

 * xxx 改成容器名称
 * 用户名 建议 `英文`
 * 邮箱 邮箱地址
 * 在`SSH`输入两次密码


- 容器终端方式

容器管理页面，连接容器终端执行
```shell
python manage.py createsuperuser --username=用户名 --email=邮箱
```
