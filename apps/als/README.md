[![docker image build](https://github.com/wikihost-opensource/als/actions/workflows/docker-image.yml/badge.svg)](https://github.com/wikihost-opensource/als/actions/workflows/docker-image.yml)

# ALS - 另一个镜像服务器

## 快速上手

```
docker run -d --name looking-glass --restart always --network host wikihostinc/looking-glass-server
```

[DEMO](http://lg.hk1-bgp.hkg.50network.com/)

## 主机要求

*   可以运行 docker（是的，只需要 docker 即可）

## 图像环境变量

| 键 | 示例 | 默认 | 描述 |
| --- | --- | --- | --- |
| LISTEN\_IP | 127.0.0.1 | (all ip) | 哪个 IP 地址将被监听使用 |
| HTTP\_PORT | 80 | 80 | 应该使用哪个 HTTP 端口 |
| SPEEDTEST\_FILE\_LIST | 100MB 1GB | 1MB 10MB 100MB 1GB | 静态测试文件的大小，用空格隔开 |
| LOCATION | "这是位置" | (from maxmind 数据库，ip 通过 PUBLIC\_IPV4 或 PUBLIC\_IPV6) | 位置字符串 |
| MAXMIND\_KEY | THE\_KEY | (空) | 关于更多详情：https://dev.maxmind.com/geoip/geolite2-free-geolocation-data |
| PUBLIC\_IPV4 | 1.1.1.1 | （从 http://ifconfig.co 获取） | 服务器的 IPv4 地址 |
| PUBLIC\_IPV6 | fe80::1 | （从 http://ifconfig.co 获取） | 服务器的 IPv6 地址 |
| DISPLAY\_TRAFFIC | true | true | 切换流媒体流量图 |
| ENABLE\_SPEEDTEST | true | true | 切换速度测试功能 |
| UTILITIES\_PING | true | true | 启用 ping 功能 |
| UTILITIES\_SPEEDTESTDOTNET | true | true | 启用 speedtest.net 功能 |
| UTILITIES\_FAKESHELL | true | true | 启用 HTML 壳功能 |
| UTILITIES\_IPERF3 | true | true | 启用 iperf3 功能 |
| UTILITIES\_IPERF3\_PORT\_MIN | 30000 | 30000 | iperf3 监听端口范围 - 起始 |
| UTILITIES\_IPERF3\_PORT\_MAX | 31000 | 31000 | iperf3 监听端口范围 - 终止 |
| SPONSOR\_MESSAGE | "测试消息" 或 "/tmp/als\_readme.md" 或 "http://some\_host/114514.md" | '' | 显示服务器赞助商信息（支持 markdown 文件，需要映射文件到容器） |

## 功能

- [x] HTML 5 速度测试
- [x] IPv4 - 平行传输
- [x] iPerf3 服务器
- [x] 流媒体流量图
- [x] Speedtest.net 客户端
- [x] 在线 Shell 箱（限用命令）

## 感谢

[https://github.com/librespeed/speedtest](https://github.com/librespeed/speedtest)

## 许可证

代码采用 MIT 公开许可协议授权。

*   如果您愿意支持我的努力，请保留“Powered by LookingGlass”链接。