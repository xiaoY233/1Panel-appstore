# 使用说明

## 数据文件夹授权

- 1、**必要操作：** 首次安装完成后，进入已安装应用界面，点击跳转数据目录，修改目录下的`data`文件夹为`1000`用户和用户组。

命令行修改则类似如下，路径按需修改：
```
chown -R 1000:1000 /opt/1panel/apps/local/headscale-webui/headscale-webui/data
```

- 2、回到已安装应用界面，重建应用。


# 原始相关
***
<p align="center">
  <a href="https://github.com/juanfont/headscale">
    <img src="https://github.com/iFargle/headscale-webui/raw/main/static/img/headscale3-dots.png" width="250">
  </a>
</p>

<h2 align="center">Headscale-WebUI</h3>

<p align="center">
  A simple Headscale web UI for small-scale deployments.
</p>
<p align="center">
  <a href="https://github.com/iFargle/headscale-webui/blob/main/README.md#Screenshots">Screenshots</a> | <a href="https://github.com/iFargle/headscale-webui/blob/main/SETUP.md">Installation</a> | <a href="https://github.com/iFargle/headscale-webui/issues">Issues</a>
</p>

---
# Features
1.  Enable/Disable routes and exit nodes
    * Manage failover routes as well
2.  Add, move, rename, and remove machines
3.  Add and remove users/namespaces
4.  Add and expire PreAuth keys
5.  Add and remove machine tags
6.  View machine details
    * Hostname
    * User associated with the machine
    * IP addresses in the Tailnet
    * Last seen by the control server
    * Last update with the control server
    * Creation date
    * Expiration date (will also display a badge when nearing expiration)
    * PreAuth key associated with the machine
    * Enable / disable routes and exit nodes
    * Add and delete machine tags
7.  Basic and OIDC Authentication
    * OIDC Authentication tested with Authelia and Keycloak
8.  Change your color theme! See MaterializeCSS Documentation for Colors for examples.
9.  Search your machines and users.
    * Machines have tags you can use to filter search:
        * `tag:tagname` Searches only for specific tags
        * `machine:machine-name` Searches only for specific machines
        * `user:user-name` Searches only for specific users


---
# Installation
* See [SETUP.md](SETUP.md) for installation and configuration instructions.

---
# Screenshots:
![Overview](https://github.com/iFargle/headscale-webui/raw/main/screenshots/overview.png)
![Routes](https://github.com/iFargle/headscale-webui/raw/main/screenshots/routes.png)
![Machines](https://github.com/iFargle/headscale-webui/raw/main/screenshots/machines.png)
![Users](https://github.com/iFargle/headscale-webui/raw/main/screenshots/users.png)
![Settings](https://github.com/iFargle/headscale-webui/raw/main/screenshots/settings.png)

---
# Tech used:
* Python - [Link](https://www.python.org/)
* Poetry - [Link](https://python-poetry.org/)
* MaterializeCSS - [Link](https://github.com/Dogfalo/materialize)
* jQuery - [Link](https://jquery.com/)

For Python libraries, see [pyproject.toml](https://github.com/iFargle/headscale-webui/blob/main/pyproject.toml)

If you use this project, please reach out!  It keeps me motivated!  Thank you!