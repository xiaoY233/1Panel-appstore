# 使用说明

- 访问链接协议`https`

- 默认账户密码
```
username: kasm_user
password: password
```

- 假如重启出现异常

大概率可能是文件夹权限原因，需要将应用数据文件夹`data`赋予用户权限，

终端运行以下命令，按需修改。

```
chown -R 1000:1000 /opt/1panel/apps/local/qbittorrent-vnc/qbittorrent-vnc/data
```

# 原始相关
***

**Kasm Workspaces is a docker container streaming platform for delivering browser-based access to desktops, applications, and web services.**

## Live Demo


**Launch a real-time demo in a new browser window:** [Live Demo](https://app.kasmweb.com/#/cast/5361455650).

<img width="300" height="104" src="https://5856039.fs1.hubspotusercontent-na1.net/hub/5856039/hubfs/dockerhub/casting-buttons/Qbittorrent.png"/>](https://app.kasmweb.com/#/cast/5361455650)

∗*Note: Demo is limited to 3 minutes and has upload/downloads restricted for security purposes.*

## Get Started

Try out our no-cost Community Edition: [Download](https://kasmweb.com/downloads "Download").

Our Kasm Workspaces team has open-sourced our library of images ([Info](https://www.kasmweb.com/docs/latest/guide/custom_images.html "Image Info") & [Source Code](https://github.com/kasmtech/workspaces-images "Workspaces Images")).

The web-native rendering is powered by our open-source project: [KasmVNC](https://github.com/kasmtech/KasmVNC "KasmVNC").

## About This Image

This Image contains a browser-accessible version of [qBittorrent](https://www.qbittorrent.org/).

<img width="767" height="418" src="https://5856039.fs1.hubspotusercontent-na1.net/hubfs/5856039/dockerhub/qbittorrent.png"/>

## Environment Variables

- `APP_ARGS` \- Additional arguments to pass to the application when launched.

## Stand-alone Deployment

This image was designed to run natively within Kasm Workspaces, but it can also be deployed stand-alone and accessed through a web browser.

```
sudo docker run --rm -it --shm-size=512m -p 6901:6901 -e VNC_PW=password kasmweb/qbittorrent:1.13.0 
```

The container is now accessible via a browser : [https://IP\_OF\_SERVER:6901](https://ip_of_server:6901/)

- User : kasm_user
- Password: password

**Please note that some functionality, such as audio, uploads, downloads, and microphone pass-through, is only available when using Kasm Workspaces for orchestration.**

## Tags

- 1.13.0
    
    - Images are built and tagged with the Kasm Workspaces release version.
- 1.13.0-rolling
    
    - Rolling tags are images that are updated and built nightly to ensure your images are running the latest version.
- develop
    
    - The develop tag is for testing and provides no expectation of compatibility.

## Additional Info

- Source Code
    
    - [KasmVNC GitHub](https://github.com/kasmtech/KasmVNC "KasmVNC"): Open-Source VNC server: web-native, secure, high-performance.
    - [Images GitHub](https://github.com/kasmtech/workspaces-images "Workspaces Images"): Library of Workspaces Docker images.
    - [Core Images GitHub](https://github.com/kasmtech/workspaces-core-images "Core Images"): Library of core OS baselines for custom images.
- Workspaces Documentation
    
    - [Developer API](https://www.kasmweb.com/docs/latest/developers/developer_api.html "Developer API"): Integrate with your applications and workflows.
    - [Workspaces](https://www.kasmweb.com/docs/latest/install.html "Installation"): Instructions for installing and configuring Kasm Workspaces.
    - [Custom Images](https://www.kasmweb.com/docs/latest/how_to/building_images.html "Custom Images"): Info on configuring custom images and installing software.
- Reporting Issues
    
    - [Issue Tracker GitHub](https://github.com/kasmtech/workspaces-issues/issues "GitHub Support"): Community issue reporting.