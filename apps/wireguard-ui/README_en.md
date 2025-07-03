# 使用说明

新版本的镜像假如遇到网页登录存在问题，或许可以尝试重启应用再登录。

假如无效，则可以在 1Panel 高级设置里编辑应用`compose`文件调整以下参数，具体可以查看原项目说明。

```
      - WGUI_MANAGE_START=false
      - WGUI_MANAGE_RESTART=true
```

# 原始相关
***

![](https://github.com/ngoduykhanh/wireguard-ui/workflows/wireguard-ui%20build%20release/badge.svg)

# wireguard-ui

A web user interface to manage your WireGuard setup.

## Features

- Friendly UI
- Authentication
- Manage extra client information (name, email, etc)
- Retrieve client config using QR code / file / email

![wireguard-ui 0.3.7](https://user-images.githubusercontent.com/37958026/177041280-e3e7ca16-d4cf-4e95-9920-68af15e780dd.png)
