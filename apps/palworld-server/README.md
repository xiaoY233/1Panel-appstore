# 使用说明

**镜像标签版本是不同的，不可以覆盖**

*   `latest`是下载了整合包，镜像体积比较大。
*   数字版本的是安装好了会自动在线下载所需内容的。

# 原始相关

* * *

# palworld-docker

[![Check Update](https://github.com/KagurazakaNyaa/palworld-docker/actions/workflows/update.yml/badge.svg)](https://github.com/KagurazakaNyaa/palworld-docker/actions/workflows/update.yml) [![Build Docker Image](https://github.com/KagurazakaNyaa/palworld-docker/actions/workflows/build.yml/badge.svg)](https://github.com/KagurazakaNyaa/palworld-docker/actions/workflows/build.yml) ![Docker Pulls](https://img.shields.io/docker/pulls/kagurazakanyaa/palworld) ![Docker Stars](https://img.shields.io/docker/stars/kagurazakanyaa/palworld) ![Image Size](https://img.shields.io/docker/image-size/kagurazakanyaa/palworld/latest)

Palworld 专用服务器 Docker 镜像

## 环境变量

表中的变量会影响服务器启动命令，请参阅 [https://tech.palworldgame.com/dedicated-server-guide#settings](https://tech.palworldgame.com/dedicated-server-guide#settings) 和 [https://tech.palworldgame.com/community-server-guide](https://tech.palworldgame.com/community-server-guide)

| 变量 | 描述 | 默认值 | 允许值 |
| --- | --- | --- | --- |
| MAX\_PLAYERS | 更改服务器上的最大参与者数量。 | 32 | 1-32 |
| GAME\_PORT | 更改用于监听服务器的端口号。 | 8211 | 1024-65535 |
| ENABLE\_MULTITHREAD | 在多线程 CPU 环境中提高性能。 | true | true/false |
| IS\_PUBLIC | 设置服务器为社区服务器。 | false | true/false |
| PUBLIC\_IP | 如未指定，将自动检测。 |  | 所有有效的 IP 地址 |
| PUBLIC\_PORT | 如果没有指定，将会自动检测。 |  | 1024-65535 |
| FORCE\_UPDATE | 服务器是否每次启动时都进行更新。 | false | true/false |

表中的变量仅在初始化时有效，如果您需要使其有效，请删除 `/opt/palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini` 并重启容器。

| 变量 | 描述 | 默认值 | 允许的值 |
| --- | --- | --- | --- |
| SERVER\_NAME | 服务器名称 | 默认 Palworld 服务器 | 字符串 |
| SERVER\_DESC | 服务器描述 | 默认 Palworld 服务器 | 字符串 |
| ADMIN\_PASSWORD | 管理员密码 |  | 字符串 |
| SERVER\_PASSWORD | 设置服务器密码。 |  | 字符串 |
| RCON\_ENABLED | 启用 RCON | false | true/false |
| RCON\_PORT | RCON 端口号码 | 25575 | 1024-65535 |

对于平衡性调整，请直接修改 `/opt/palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini` ，请参考 [https://tech.palworldgame.com/optimize-game-balance](https://tech.palworldgame.com/optimize-game-balance)

## 卷

| 路径 | 描述 |
| --- | --- |
| /opt/palworld/Pal/Saved | 游戏配置和存档。 |

注意：如果你使用 bind 而不是 volume 来挂载，需要手动将卷的所有者更改为 uid=1000。对于示例中的 docker-compose.yml，你需要执行 \`chown -R 1000:1000 ./data\`