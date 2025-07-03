# 使用说明

## 数据文件夹授权

*   1、**必要操作：** 首次安装完成后，进入已安装应用界面，点击跳转数据目录，修改目录下的`data`文件夹为`1000`用户和用户组。

命令行修改则类似如下，路径按需修改：

```
chown -R 1000:1000 /opt/1panel/apps/local/headscale-webui/headscale-webui/data
```

*   2、回到已安装应用界面，重建应用。

# 原始相关

* * *

[![](https://github.com/iFargle/headscale-webui/raw/main/static/img/headscale3-dots.png)](https://github.com/juanfont/headscale)

## Headscale-WebUI

一个简单的 Headscale 网络 UI，适用于小规模部署。

[截图](https://github.com/iFargle/headscale-webui/blob/main/README.md#Screenshots) | [安装](https://github.com/iFargle/headscale-webui/blob/main/SETUP.md) | [问题](https://github.com/iFargle/headscale-webui/issues)

* * *

# 功能

1.  启用/禁用路由和出口节点
    *   管理故障转移路由
2.  添加、移动、重命名和删除机器
3.  添加和删除用户/命名空间
4.  添加和过期预认证密钥
5.  添加和删除机器标签
6.  查看机器详情
    *   主机名
    *   与机器关联的用户
    *   Tailnet 中的 IP 地址
    *   最后由控制服务器看到
    *   最后更新时间（与控制服务器同步）
    *   创建日期
    *   过期日期（临近过期时也会显示徽章）
    *   与机器关联的预授权密钥
    *   启用/禁用路由和出口节点
    *   添加和删除机器标签
7.  基本和 OIDC 身份验证
    *   使用 Authelia 和 Keycloak 测试的 OIDC 身份验证
8.  更改您的颜色主题！请参阅 MaterializeCSS 文档中的颜色示例。
9.  搜索您的计算机和用户。
    *   计算机有您可以用来筛选搜索的标签：
        *   `标签：tagname` 仅搜索特定标签
        *   `machine:machine-name` 仅搜索特定机器
        *   `user:user-name` 仅搜索特定用户

* * *

# 安装

*   请参阅 [SETUP.md](SETUP.md) 获取安装和配置说明。

* * *

# 截图：

![Overview](https://github.com/iFargle/headscale-webui/raw/main/screenshots/overview.png) ![Routes](https://github.com/iFargle/headscale-webui/raw/main/screenshots/routes.png) ![Machines](https://github.com/iFargle/headscale-webui/raw/main/screenshots/machines.png) ![Users](https://github.com/iFargle/headscale-webui/raw/main/screenshots/users.png) ![Settings](https://github.com/iFargle/headscale-webui/raw/main/screenshots/settings.png)

* * *

# 使用的技术：

*   Python - [链接](https://www.python.org/)
*   诗歌 - [链接](https://python-poetry.org/)
*   MaterializeCSS - [链接](https://github.com/Dogfalo/materialize)
*   jQuery - [链接](https://jquery.com/)

Python 库请参阅 [pyproject.toml](https://github.com/iFargle/headscale-webui/blob/main/pyproject.toml)

如果您使用这个项目，请与我联系！这让我更有动力！谢谢！