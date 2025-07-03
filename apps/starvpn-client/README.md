- ### 星空组网配置指南

  #### 兼容系统

  星空组网的Docker客户端支持以下操作系统：

  - x86_64 架构
  - arm64 架构
  - arm/v7 架构

  #### 快速部署

  ```shell
  version: "3"
  services:
    starvpn:
      image: xianwei2022/stars.client:latest
      container_name: starvpn
      environment:
        - STARS_USER=admin # 成员账号
        - STARS_PASS=admin # 成员密码
      ports:
        - "8080:8080" # Web 管理端口
      volumes:
        - ./starvpn-data:/data
      restart: always
  ```

  > **您可以在此处获取成员账号：[星空组网官方注册页面⁠](https://starvpn.cn/user/register.html)**

  #### 配置参数详解

  - `STARS_USER`: 指定您的星空组网成员账号。
  - `STARS_PASS`: 指定您的星空组网成员密码。
  - `--privileged`: 启用特权模式，此选项为必须。
  - `--net=host`: 使用宿主机网络，此选项为必须。
  - `--name stars.client`: 容器名称，可根据需要修改。

  #### 注意事项

  **Docker参数支持**：确保您的Docker环境支持`--privileged`和`--net=host`参数，以正常运行星空组网客户端。