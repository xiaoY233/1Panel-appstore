# warp-docker

Run official [Cloudflare WARP](https://1.1.1.1/) client in Docker.


# 使用说明

检测是否运行正常，端口按需修改。
```
curl --socks5 127.0.0.1:40244 https://cloudflare.com/cdn-cgi/trace
```

如果输出包含 `warp=on` 或 `warp=plus`，说明容器工作正常。如果输出包含 `warp=off`，则表示容器未能连接到 `WARP` 服务