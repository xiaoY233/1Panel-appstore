# 极光面板

这是一个多服务器端口租用管理面板，你可以添加多台服务器及端口，并将其分配给任意注册用户，租户则可以很方便地使用被分配的端口来完成各种操作，目前支持的端口功能（**以下功能均支持 AMD64 或 ARM64 架构运行**）：
***

# 使用说明

## 1.前期准备
- 创建所需网络

终端运行
```
docker network create aurora-worker
docker network create aurora-network
```

## 2.生成 SSH 密钥
```
# 如果面板服务器并没有已经生成好的 ssh 密钥
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# 后面一直回车，跳过设置 passphase 即可
# 然后还需要将面板服务器 ~/.ssh/id_rsa.pub 里面的内容复制到每一台被控机的 ~/.ssh/authorized_keys 文件中去。
```

## 3.启动应用后创建管理员
当应用已经正确启动，点击面板"容器"功能，，找到与`aurora` `backend`相关的容器，

终端运行以下
```
# 创建管理员用户（密码必须设置8位以上，否则无法登陆）
python app/initial_data.py
```
## 4.已知问题

当开启`UFW`等防火墙功能时，所创建的网络间容器通信存在问题，无法正确运行。

有兴趣的可以尝试以下方式，或可解决与防火墙的共存问题。

- [what-is-the-best-practice-of-docker-ufw-under-ubuntu](https://stackoverflow.com/questions/30383845/what-is-the-best-practice-of-docker-ufw-under-ubuntu)

