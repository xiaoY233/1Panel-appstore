# 使用说明

*   访问链接协议`https`
    
*   默认账户密码
    

```
username: kasm_user
password: password
```

*   假如重启出现异常

大概率可能是文件夹权限原因，需要将应用数据文件夹`data`赋予用户权限，

终端运行以下命令，按需修改。

```
chown -R 1000:1000 /opt/1panel/apps/local/qbittorrent-vnc/qbittorrent-vnc/data
```

# 原始相关

* * *

**Kasm Workspaces 是一个基于 Docker 容器流式传输平台，用于提供对桌面、应用程序和 web 服务的浏览器访问。**

## Live Demo

**在新浏览器窗口中启动实时演示：**[Live Demo](https://app.kasmweb.com/#/cast/5361455650).

![](https://5856039.fs1.hubspotusercontent-na1.net/hub/5856039/hubfs/dockerhub/casting-buttons/Qbittorrent.png)\]([https://app.kasmweb.com/#/cast/5361455650](https://app.kasmweb.com/#/cast/5361455650))

\* *注意：演示版限于 3 分钟，并且出于安全原因限制了上传和下载。*

## 开始使用

试用我们的免费社区版： [下载](https://kasmweb.com/downloads "Download") 。

我们的 Kasm Workspaces 团队已开源了我们的镜像库（ [详情](https://www.kasmweb.com/docs/latest/guide/custom_images.html "Image Info") & [源代码](https://github.com/kasmtech/workspaces-images "Workspaces Images") ）。

基于网络的渲染由我们的开源项目：[KasmVNC](https://github.com/kasmtech/KasmVNC "KasmVNC") 提供支持。

## 关于此图片

此图片包含一个可通过浏览器访问的版本：[qBittorrent](https://www.qbittorrent.org/)。

![](https://5856039.fs1.hubspotusercontent-na1.net/hubfs/5856039/dockerhub/qbittorrent.png)

## 环境变量

*   `APP_ARGS` - 启动应用程序时传递的额外参数。

## 独立部署

此镜像设计用于在 Kasm Workspaces 内原生运行，但也可以独立部署并通过网页浏览器访问。

```
sudo docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password kasmweb/qbittorrent:1.13.0 
```

容器现在可通过浏览器访问：\[https://IP\_OF\_SERVER:6901\](https://IP\_OF\_SERVER:6901)

*   用户：kasm\_user
*   密码: password

**请注意，部分功能，如音频、上传、下载以及麦克风直通，仅在使用 Kasm Workspaces 进行编排时可用。**

## 标签

*   1.13.0
    
    *   图像会使用 Kasm Workspaces 发行版本进行构建和打标签。
*   1.13.0-rolling
    
    *   滚动标签是每天更新和构建的镜像，以确保您的镜像运行最新版本。
*   develop
    
    *   develop 标签用于测试，并不保证兼容性。

## 附加信息

*   源代码
    
    *   [KasmVNC GitHub](https://github.com/kasmtech/KasmVNC "KasmVNC"): 开源 VNC 服务器：基于网络原生，安全，高性能。
    *   [Images GitHub](https://github.com/kasmtech/workspaces-images "Workspaces Images"): Workspace Docker 镜像库。
    *   [Core Images GitHub](https://github.com/kasmtech/workspaces-core-images "Core Images"): 提供核心 OS 基线库，用于自定义镜像。
*   Workspaces 文档
    
    *   [Developer API](https://www.kasmweb.com/docs/latest/developers/developer_api.html "Developer API"): 与您的应用程序和工作流集成。
    *   [Workspaces](https://www.kasmweb.com/docs/latest/install.html "Installation"): 安装和配置 Kasm Workspaces 的指南。
    *   [自定义镜像](https://www.kasmweb.com/docs/latest/how_to/building_images.html "Custom Images") : 配置自定义镜像和安装软件的相关信息
*   报告问题
    
    *   [Issue Tracker GitHub](https://github.com/kasmtech/workspaces-issues/issues "GitHub Support"): 社区问题报告