# 在 Docker 里头跑 Proxmox VE

## 说明  

在docker里头跑Proxmox VE  
主要是给没kvm管理器但又有kvm的机器用  
可以部署在群辉之类的地方  

## 使用提示

默认账户：root root

1Panel 安装会修改密码，可在应用商店 -> 参数中查看

虚拟机镜像位于 `./data/vz`

已知问题：

- CT（LXC）无法使用；

- 部分机器无法使用网桥；

- 如有虚拟机正在运行可能无法关闭容器

### 检查kvm支持

确定一下你的环境是支持kvm的，内核和硬件都要支持，需要在 BIOS 中打开虚拟化选项

```shell
ls /dev/kvm
lsmod | grep kvm
cat /proc/modules | grep kvm
cat /proc/cpuinfo | egrep 'vmx|svm'
......
```

如果不支持则无法启动虚拟机

### 配置网桥设备

在宿主机上配置好虚拟网桥设备，如 Linux Bridge、OVS Bridge，使虚拟机可以桥接到宿主机的网络

> 如果您的宿主机运行的是 OpenWrt，无需按本节进行配置，默认已经有 br-lan 网桥，直接使用即可
>
> 如果您的宿主机运行的是 DSM，无需按本节进行配置，安装 VMM 套件后，默认已经有 ovs_eth0 网桥，直接使用即可
>
> 如虚拟机无需网络支持，无需按本节进行配置
>
> 如可接受使用 `qemu args` 添加网络，无需按本节进行配置

警告：配置不当可能会导致机器失联

已知问题：1. 按本节操作配置后，在部分系统（fnOS）不能正常展示网络信息；部分机器无法使用网桥，会导致无法开机

注意：以下仅适用于精简安装的 Debian，如果使用了其他网络管理工具，请自行查找教程配置网桥，并使其重启后仍然生效

下面以 Linux Bridge + ifupdown2 为例：

```shell
apt update
apt install ifupdown2 bridge-utils
```

编辑网络接口配置文件：编辑你的网络接口配置文件 `/etc/network/interfaces`

以下是创建一个基本的`br-lan`网桥的示例配置：

```shell
auto lo
iface lo inet loopback

iface enp6s0 inet manual

auto br-lan
iface br-lan inet static
        address 192.168.1.2/24
        gateway 192.168.1.1
        bridge-ports enp6s0
        bridge-stp off
        bridge-fd 0
```

请将上面的网卡名称、IP地址、网关等替换为你自己的

修改完配置文件后，你需要重启网络服务以应用更改：

```shell
sudo systemctl restart networking
```

### 虚拟机使用已存在的网桥

使用 `docker network inspect 1panel-network` 和 `ip a` 查看 `1panel-network` 的网桥设备名称，一般为 br 开头加上网桥设备的 Id，如 `br-71bd14b8df2a`

直接在 PVE 的网络管理页面（节点->系统->网络）里面创建并使用即可，如提示名字过长或保存失败，编辑容器内的 `/etc/network/interfaces` 文件即可

或者进入 PVE 的 Shell 执行以下命令给虚拟机指定网桥：

VM：

```bash
qm set 100 -net0 virtio,bridge=br-71bd14b8df2a
```

CT：

```bash
pct set 100 --net0 name=eth0,bridge=br-71bd14b8df2a
```

没有 DHCP，虚拟机里面手动配置一下 IP、网关、掩码、DNS 即可

```text
IP: 172.18.0.123
Gateway: 172.18.0.1
Netmask: 255.255.255.0
DNS: 223.5.5.5
```

### 直通物理设备

支持 USB、PCI-E 硬件直通，需要改一下 GRUB 的启动参数，加上 IOMMU 支持，如 `intel_iommu=on iommu=pt`，具体参考 PVE 的相关教程

### ovs相关

若将宿主机的`/var/run/openvswitch`挂载入容器`/host/var/run/openvswitch`
且宿主机存在名称带`ovs`字样的网桥，可自动进行部分`ovs-bridge`配置

### 无vmbr联网（性能差）

如果您不方便给 Proxmox VE 的 Docker 容器使用 host 网络类型，您也可以使用 QEMU 的 User 模式进行上网。相当于 QEMU 自动完成了 NAT 操作，只要容器能上网虚拟机就能上网。由于不是专业的转发软件，性能比较一般

Proxmox VE不支持直接配置User模式上网，我们需要删除掉 Proxmox VE 里面的网卡，然后手动添加 QEMU 的运行参数

```shell
qm set <VMID> -args '-netdev user,id=n0 -device virtio-net-pci,netdev=n0,mac=02:11:32:2a:76:f2'
```

使用此方式联网的虚拟机可以正常出站访问，入站访问需要更多额外配置

## 仓库地址  

### github

<https://github.com/GreenDamTan/DockerFile/tree/dev/ProxmoxVE>  

### docker hub

<https://hub.docker.com/r/makedie/proxmox_ve>
