# 使用说明

这是个民间制作的`宝塔面板`的`1Panel`商店版本应用;

- WebUI入口：`http://IP地址:面板端口/btpanel`
- 默认账号：`btpanel`
- 密码：`btpaneldocker`
- 容器默认SSH密码：`btpaneldocker`

> 容器内数据
- 网站目录:`/www/wwwroot`
- MySQL目录:`/www/server/data`
- 域名数据:`/www/server/panel/vhost`


> 原作者项目相关
>> - https://hub.docker.com/r/btpanel/baota
>> - https://github.com/aaPanel/BaoTa

- 提示：为数据持久化运行，相关数据以存储卷方式存储。


# 原始相关
## 宝塔面板docker部署

此docker镜像由堡塔安全官方发布，镜像版本为宝塔面板7.9.4正式版，镜像会随着正式版的宝塔面板更新
目前支持x86_64和arm架构平台可供下载使用

维护者：[堡塔安全--宝塔官网团队](https://www.bt.cn/bbs/thread-79499-1-1.html)

### 注意：部署完成后，请立即登录宝塔面板--->面板设置中修改用户名和密码并修改安全入口

### 注意：部署完成后，请立即登录宝塔面板--->面板设置中修改用户名和密码并修改安全入口

### 注意：部署完成后，请立即登录宝塔面板--->面板设置中修改用户名和密码并修改安全入口

`latest` 标签拉取的是`lib`标签，安装了面板并且安装集成依赖包，安装每个软件都会快一点。
`fresh` 标签表示安装了面板但是没有安装集成依赖包，安装第一个软件会比较慢，因为需要装依赖包。
`lib` 标签表示安装了面板并且安装集成依赖包，安装每个软件都会快一点。
`lnmp` 标签表示安装了面板、集成包并且集成LNMP【Nginx1.22+MySQL5.7+PHP7.4】arm标签是MySQL5.6
`lamp` 标签表示安装了面板、集成包并且集成LAMP【Apache2.4+MySQL5.7+PHP7.4】arm标签是MySQL5.6

## 如何拉取镜像

仅拉取镜像保存到本地，不部署容器，仅需拉取一次，永久存储到本地镜像列表。
```
docker pull btpanel/baota:lnmp
```
小贴士：即使不拉取镜像，在下面部署的时候如果docker本地镜像列表找不到镜像，docker会从云镜像库里面拉取，只要执行一次之后镜像就会永久存储到本地镜像列表中。
疑问？：我是arm服务器arch64架构怎么办？
答疑！：直接拉取镜像即可，docker默认会根据系统架构自动拉取匹配架构的镜像到本地。

## 如何部署

方法1：复制下方的命令，无需映射端口使用本地网络直接部署宝塔面板docker镜像。

```
docker run -d --restart unless-stopped --name baota --net=host -v ~/website_data:/www/wwwroot -v ~/mysql_data:/www/server/data -v /vhost:/www/server/panel/vhost btpanel/baota:lnmp
```

方法2：复制下方的命令，映射指定端口部署宝塔面板docker镜像。
```
docker run -d --restart unless-stopped --name baota -p 8888:8888 -p 22:22 -p 443:443 -p 80:80 -p 888:888 -v ~/website_data:/www/wwwroot -v ~/mysql_data:/www/server/data -v ~/vhost:/www/server/panel/vhost btpanel/baota:lnmp
```

两种部署方法都会把用户的目录映射到容器中，用户可自行修改映射的目录，方法1案例以如下：
`~/website_data修改成/home/website_data`
`~/mysql_data修改成/home/mysql_data`
`~/vhost修改成/home/vhost`

此时我的容器启动命令就是这个
```
docker run -d --restart unless-stopped --name baota --net=host -v /home/website_data:/www/wwwroot -v /home/mysql_data:/www/server/data -v /home/vhost:/www/server/panel/vhost btpanel/baota:lnmp
```

## 小提示！

如果你希望运行的docker在你设置了内容以后，再`commit`打包成自己的镜像留着日后使用，请不要映射目录运行容器，可以使用下面的方法运行容器，这样打包容器就能将你的网站内容、各种设置、数据库一起打包在里面
```
docker run -d --net=host btpanel/baota:lnmp
```

## 如何访问

现在，您可以在浏览器访问默认地址`http://您的ip地址:8888/btpanel` 上的宝塔面板。
默认用户：`btpanel`
默认密码：`btpaneldocker`
容器默认SSH密码：`btpaneldocker`

### 无法访问？

请检查系统防火墙以及服务器商家安全组是否开放了8888端口，下面给出系统防火墙firewalld(必需)的开放方法
添加8888端口放行(必需)：`firewall-cmd --zone=public --remove-port=8888/tcp --permanent`
重载firewalld(必需)：`firewall-cmd --reload`

开放安全组示例(必需)：
[阿里云](https://www.bt.cn/bbs/thread-75887-1-1.html)
[腾讯云](https://www.bt.cn/bbs/thread-61042-1-1.html)

### 端口使用分析

宝塔面板：`8888`
phpmyadmin：`888`
SSH：`22`
网站服务：`80，443`
MySQL：`3306`

### 目录使用分析

容器里面的网站数据目录：`/www/wwwroot`
MySQL数据目录：`/www/server/data`
vhost文件路径：`/www/server/panel/vhost`

使用有任何问题或者建议，欢迎广大用户在[-->此贴<--](https://www.bt.cn/bbs/thread-79499-1-1.html)提交，您宝贵的建议会让我们有更大的动力 https://www.bt.cn/bbs/thread-79499-1-1.html

