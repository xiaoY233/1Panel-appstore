# wgcf-docker

CloudFlare warp 的 docker 版

派生自: [https://github.com/Neilpang/wgcf-docker](https://github.com/Neilpang/wgcf-docker)

#### 我做了哪些改进：

1.  限制使用 3.17 版本的 Alpine，以避免因版本问题导致的错误。
2.  添加了 socks5 代理服务

运行示例：

```shell
docker run --rm -it \
     --name wgcf \
     --sysctl net.ipv6.conf.all.disable_ipv6=0 \
     --privileged --cap-add net_admin \
     -v /lib/modules:/lib/modules \
     -v $(pwd)/wgcf:/wgcf \
     -p 7889:1080 \
     activeliang/wgcf-socks5-proxy -6
```

现在您可以在宿主机上使用 socks 代理：

```shell
curl --socks5 127.0.0.1:7889 -6 ip.p3terx.com
```

## 可配置的 SOCKS5 代理通过环境变量

此 SOCKS5 代理支持通过环境变量进行配置。您可以使用以下变量自定义代理设置：USER、PASSWORD、PORT 和 HOST。只有当提供了 USER 和 PASSWORD 变量时，认证（auth）才会被启用。

### 使用方法

要配置 SOCKS5 代理，请按照以下步骤操作：

1.  设置以下环境变量：
    
    *   USER：认证的用户名（可选）。
    *   PASSWORD：认证的密码（可选）。
    *   端口：代理服务器的端口号（默认：1080）
    *   代理服务器的主机地址（默认：0.0.0.0）。
    
    注意：只有当 USER 和 PASSWORD 变量都提供时，才会启用身份验证。如果缺少任何一个，身份验证将不会启用。
    
2.  使用您首选的方法启动 SOCKS5 代理，并将环境变量作为参数传递。
    
    示例：
    
    ```bash
     PASSWORD=mypassword PORT=1080 HOST=0.0.0.0 start_proxy.sh
    docker run --rm -it \
      --name wgcf \
      --sysctl net.ipv6.conf.all.disable_ipv6=0 \
      --privileged --cap-add net_admin \
      -v /lib/modules:/lib/modules \
      -v $(pwd)/wgcf:/wgcf \
      -p 7889:1080 \
      -e USER=myuser \
      -e PASSWORD=mypassword \
      -e PORT=1080 \
      -e HOST=0.0.0.0 \
      activeliang/wgcf-socks5-proxy -6
    ```
    
    此命令将使用指定的配置启动 SOCKS5 代理。
    
3.  SOCKS5 代理将在指定的主机和端口上可用。仅当提供了 USER 和 PASSWORD 变量时才会强制执行身份验证。
    

就这样！你现在可以使用环境变量配置 SOCKS5 代理，并可以通过提供 USER 和 PASSWORD 变量来启用身份验证。

## 以下是原始项目的 README

1.  运行单个容器：

```

docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker



The above command will enable both ipv4 and ipv6, you can enable ipv4 or ipv6 only like following:


#enable ipv4 only:



docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker  -4 



#enable ipv6 only:



docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker  -6 



```

或者：

```
docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker:alpine





The above command will enable both ipv4 and ipv6, you can enable ipv4 or ipv6 only like following:


#enable ipv4 only:


docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker:alpine  -4



#enable ipv6 only:


docker run --rm -it \
    --name wgcf \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --privileged --cap-add net_admin \
    -v /lib/modules:/lib/modules \
    -v $(pwd)/wgcf:/wgcf \
    neilpang/wgcf-docker:alpine  -6




```

2.  如果另一个容器需要使用 wgcf 网络，可以这样运行：

```

docker run --rm  -it  --network container:wgcf  curlimages/curl curl ipinfo.io

```

3.  Docker-compose 示例：

```
Enable both ipv4 and ipv6 by default:


version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:latest
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipinfo.io




Enable ipv6 only:

version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:latest
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
    command: "-6"
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipv6.ip.sb





Enable ipv4 only:



version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:latest
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
    command: "-4"
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipinfo.io



```

或者：

```

Enable both ipv4 and ipv6 by default:



version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:alpine
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipinfo.io

  
  





Enable ipv6 only:



version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:alpine
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
    command: "-6"
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipv6.ip.sb






Enable ipv4 only:



version: "2.4"
services:
  wgcf:
    image: neilpang/wgcf-docker:alpine
    volumes:
      - ./wgcf:/wgcf
      - /lib/modules:/lib/modules
    privileged: true
    sysctls:
      net.ipv6.conf.all.disable_ipv6: 0
    cap_add:
      - NET_ADMIN
    command: "-4"
  

  test:
    image: curlimages/curl
    network_mode: "service:wgcf"
    depends_on:
      - wgcf
    command: curl ipinfo.io





```