# 使用说明

新版本的镜像假如遇到网页登录存在问题，或许可以尝试重启应用再登录。

假如无效，则可以在 1Panel 高级设置里编辑应用`compose`文件调整以下参数，具体可以查看原项目说明。

```
      - WGUI_MANAGE_START=false
      - WGUI_MANAGE_RESTART=true
```

# 原始相关

* * *

![](https://github.com/ngoduykhanh/wireguard-ui/workflows/wireguard-ui%20build%20release/badge.svg)

# wireguard-ui

一个用于管理你的 WireGuard 配置的网络用户界面。

## 功能

*   友好界面
*   认证
*   管理额外的客户端信息（名称、邮箱等）
*   使用二维码/文件/邮箱检索客户端配置

![wireguard-ui 0.3.7](https://user-images.githubusercontent.com/37958026/177041280-e3e7ca16-d4cf-4e95-9920-68af15e780dd.png)