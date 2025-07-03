# 运行具有状态的 Linux 容器在 Docker 中![](https://img.shields.io/docker/pulls/micwy/lxc.svg?v_DATE)

> :warning: 这是一个完整的重写，仅使用 LXC，不使用 vagrant。它可以运行使用 v0.1 创建的 LXC 容器，但配置和使用方式不同。使用标签 v0.1 获取旧版本。

Docker Hub: [micwy/lxc](https://hub.docker.com/r/micwy/lxc)

我非常惊讶，这个镜像的拉取次数有多少。请告诉我你是如何使用它的（只需在 github 上创建一个问题），我会将其添加到“用例”部分。

## 为什么？

在某些情况下，在具有“状态”的 docker 环境中运行完整的操作系统可能很有用，这主要意味着拥有一个持久的根卷。仅使用 docker 是不可能的，因为 docker 不允许/成为一个卷。这就是 LXC 发挥作用的地方。LXC 提供与 docker 类似的过程隔离，但具有状态化的根文件系统。不幸的是，随着 docker 的兴起，docker 的管理工具比 LXC 的管理工具更为广泛和复杂。

这个项目允许在 docker 容器内使用单个 LXC 容器，以获得两者的最佳效果。

## 功能

*   在 docker 中运行单个 LXC 容器，具有完整的操作系统和持久的根
*   使用 docker 特有的功能为您的 LXC 容器（例如：docker-compose、暴露端口、traefik 用于入口、Kubernetes 作为平台）
*   LXC 容器使用与 docker 容器相同的限制和网络堆栈，因此像暴露端口这样的功能按预期工作
*   双向正确的信号处理（正确关闭 docker 容器可以正确关闭 LXC 容器。在 LXC 中关机可以关闭 docker 容器）
*   LXCFS 支持：在容器内，显示正确的运行时间和限制
*   Shell-Wrapper：如果使用“docker exec”调用/bin/sh，则会在 LXC 容器中启动一个 shell。因此，大多数管理工具中的控制台会直接在 LXC 容器内打开，而不是在周围的 docker 容器中
*   创建初始根文件系统：对于某些发行版，可以通过环境变量简单地设置初始根文件系统
*   通过环境变量添加初始 SSH 密钥以实现即时登录

### 一些用例

*   为您的用户提供“家庭容器”，每个容器都有自己的 ssh 访问权限和持久状态
*   在 Kubernetes 上运行 Linux 远程桌面服务器
*   轻松在 Docker/Kubernetes 上运行有状态软件（如 froxlor 控制面板或 plesk）

### 想法 / 待办事项

*   支持更多分发根文件系统
*   从 vagrant-lxc 盒子导入 rootfs

## 如何运行

```
docker run -d \
  --name lxc \
  --privileged  \
  --hostname lxctest1 \
  -v /path/to/data:/data \
  -v /path/to/somedir:/vol/somedir \
  -e DISTRIBUTION=alpine \
  -e INITIAL_SSH_KEY="ssh-rsa AAAA...Q== my-initial-ssh-key" \
  micwy/lxc
```

*   目前运行 LXC 在容器中需要"privileged"权限
*   主机名传递到 lxc 容器
*   卷/data 包含根文件系统（位于/data/rootfs）和一些附加文件（系统创建期间的临时根文件系统，lxc 配置）

### 运行于 Kubernetes

以下是一个在 Kubernetes 上运行的 yaml 示例。如果有兴趣，我也可以提供 helm 图表。

```
---
# Source: lxc/templates/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mylxcbox
  labels:
    app.kubernetes.io/name: lxc
    app.kubernetes.io/instance: mylxcbox
spec:
  replicas: 
  selector:
    matchLabels:
      app.kubernetes.io/name: lxc
      app.kubernetes.io/instance: mylxcbox
  template:
    metadata:
      labels:
        app.kubernetes.io/name: lxc
        app.kubernetes.io/instance: mylxcbox
    spec:
      containers:
        - name: lxc
          image: "micwy/lxc:latest"
          imagePullPolicy: Always
          # Required to launch lxc containers in the docker container
          securityContext:
            privileged: true
          # Required to make LXC console work
          stdin: true
          tty: true
          ports:
            - name: ssh
              containerPort: 22
              protocol: TCP
              hostPort: 2201
          env:
            - name: "DISTRIBUTION"
              value: "archlinux"
            - name: "INITIAL_SSH_KEY"
              value: "ssh-rsa ...DVs= my-ssh-key"
          volumeMounts:
            - mountPath: /data
              name: data
      # Will be passed into the lxc container
      hostname: mylxcbox
      volumes:
      - name: data
        hostPath:
          path: /data/mylxcbox
  # Strategy must be recreate if hostPort is used
  strategy:
    type: Recreate

```

### 环境变量

*   DISTRIBUTION：如果/data/rootfs 不存在，则触发特定分布的设置脚本（见下文）
*   INITIAL\_SSH\_KEY：如果设置，则在启动时将其复制到/root/.ssh/authorized\_keys，如果该文件尚不存在
*   USE\_LXCFS（默认为 false）：如果为 true，则将 [LXCFS](https://github.com/lxc/lxcfs) 挂载到 LXC 容器中
    *   :warning: 可能与 systemd 不兼容！
*   COPY\_RESOLV\_CONF（默认为 true）：如果为 true，则将 docker 容器中的 resolv.conf 复制到 LXC 容器中

### 附加卷

*   docker 容器的目录/vol 使用“rbind”挂载到 LXC 容器的/vol 上
*   每个挂载到/vol/something 的 docker-volume 将显示为/vol/something 在 LXC 上

### 可用的分发设置脚本

#### DISTRIBUTION: alpine

如果 rootfs 不存在，则安装 alpine。

特性：

*   非常简约的 bash、nano 和 openssh 图像

支持的环镜变量：

*   ALPINE\_ARCH:（默认 x86\_64）：rootfs 的架构
*   ALPINE\_VERSION: (默认最新稳定版): 安装的 alpine 版本
*   ALPINE\_EXTRA\_PACKAGES: 伴随 rootfs 一起安装的额外软件包

#### 分发：archlinux

如果 rootfs 不存在，则安装 archlinux。

特性：

*   基本系统镜像，包含常用工具和 openssh

支持的环镜变量：

*   ARCHLINUX\_INSTALL\_TRIZEN: （默认：true）：如果为 true，则为 AUR 软件包安装 trizen 包管理器
*   ARCHLINUX\_EXTRA\_PACKAGES：与 rootfs 一起安装的附加包。如果已安装，将使用 trizen 运行安装，否则使用 pacman。
*   ARCHLINUX\_MIRRORLIST\_COUNTRY（默认：德国 - 我必须承认，我有偏见）：用于创建初始 packman 镜像列表的国家。