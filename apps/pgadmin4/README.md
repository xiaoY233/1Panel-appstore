# pgAdmin 4

pgAdmin 4 是 PostgreSQL（[http://www.postgresql.org](http://www.postgresql.org)）数据库的流行管理工具 pgAdmin3 的重写版本。

在以下文档和示例中，*$PGADMIN4\_SRC/* 用于表示 pgAdmin 源代码树的顶级目录，可以是从 tarball 或 git 检出得到的。

## 架构

pgAdmin 4 是用 Python 编写的网络应用程序，使用 jQuery 和 Bootstrap 进行客户端处理和 UI。在服务器端，使用了 Flask。

尽管是使用网络技术开发的，pgAdmin 4 可以部署在使用浏览器的 web 服务器上，也可以独立部署在工作站上。runtime/ 子目录包含一个基于 NWjs 的运行时应用程序，旨在允许这种部署，该应用程序将执行 Python 服务器并显示 UI。

## 构建运行时

要构建运行时，必须安装以下包：

*   NodeJS 12+
*   Yarn

进入运行时目录，并运行 \`*yarn install*\`。这将安装所需的依赖项。

为了在开发环境中使用运行时，你需要将 *dev\_config.json.in* 文件复制为 *dev\_config.json*，并编辑 Python 可执行文件和 *pgAdmin.py* 文件的路径，否则运行时将使用默认路径，这些路径是它期望在标准包中找到的路径。

然后你可以通过运行类似以下命令来执行运行时：

```bash
node_modules/nw/nwjs/nw .
```

或者在 macOS 上运行：

```bash
node_modules/nw/nwjs/nwjs.app/Contents/MacOS/nwjs .
```

# 配置 Python 环境

为了运行 Python 代码，需要一个合适的运行时环境。目前支持 Python 3.7 及以上版本。建议为此目的设置一个 Python 虚拟环境，而不是使用系统 Python 环境。在 Linux 和 Mac 系统上，过程相当简单——根据你的发行版进行相应的调整：

1.  在合适的目录下创建一个虚拟环境。最后一个参数是环境的名称；可以根据需要更改：
    
    ```bash
    $ python3 -m venv venv
    ```
    
2.  现在激活虚拟环境：
    
    ```bash
    $ source venv/bin/activate
    ```
    
3.  pgAdmin 使用的一些组件需要非常新的版本的 *pip*，因此请将其更新到最新版本：
    
    ```bash
    $ pip install --upgrade pip
    ```
    
4.  确保 PostgreSQL 安装的 bin/目录在路径中（以便在构建 psycopg3 时可以找到 pg\_config），并安装所需的包：
    
    ```bash
    (venv) $ PATH=$PATH:/usr/local/pgsql/bin pip install -r $PGADMIN4_SRC/requirements.txt
    ```
    
    如果你计划运行回归测试，还需要安装 web/regression/requirements.txt 中的额外要求：
    
    ```bash
    (venv) $ pip install -r $PGADMIN4_SRC/web/regression/requirements.txt
    ```
    
5.  为 pgAdmin 创建一个本地配置文件。编辑$PGADMIN4\_SRC/web/config\_local.py，并添加任何所需的配置选项（以 config.py 文件为参考 - config\_local.py 中任何重复的设置将覆盖 config.py 中的设置）。典型的开发配置可能如下：
    
    ```python
    from config import *
    
    # Debug mode
    DEBUG = True
    
    # App mode
    SERVER_MODE = True
    
    # Enable the test module
    MODULE_BLACKLIST.remove('test')
    
    # Log
    CONSOLE_LOG_LEVEL = DEBUG
    FILE_LOG_LEVEL = DEBUG
    
    DEFAULT_SERVER = '127.0.0.1'
    
    UPGRADE_CHECK_ENABLED = True
    
    # Use a different config DB for each server mode.
    if SERVER_MODE == False:
        SQLITE_PATH = os.path.join(
            DATA_DIR,
            'pgadmin4-desktop.db'
        )
    else:
        SQLITE_PATH = os.path.join(
            DATA_DIR,
            'pgadmin4-server.db'
        )
    ```
    
    此配置允许在测试时轻松切换服务器模式和桌面模式。
    
6.  在服务器模式下，配置数据库的初始设置是交互式的，而在桌面模式下是非交互式的。你可以通过运行以下命令来运行它：
    
    ```bash
    (venv) $ python3 $PGADMIN4_SRC/web/setup.py
    ```
    
    或者启动 pgAdmin 4：
    
    ```bash
    (venv) $ python3 $PGADMIN4_SRC/web/pgAdmin4.py
    ```
    
    虽然可以在桌面模式下通过运行运行时自动运行设置，但在服务器模式下这将不起作用，因为运行时不允许与设置程序进行命令行交互。
    

此时，你可以在命令行中以服务器或桌面模式运行 pgAdmin 4，并通过终端中显示的 URL 从 web 浏览器访问它。

在 Windows 上设置环境稍微复杂一些，详情请参见 *pkg/win32/README.txt*。

# 构建 Web 资产

pgAdmin 依赖于多个第三方 Javascript 库。这些库连同它自己的 Javascript 代码、SCSS/CSS 代码和图片需要被打包成一个“bundle”，然后传输到浏览器执行和渲染。这种方式比每次客户端需要时单独请求每个资源要高效得多。

要创建这个 bundle，你需要安装 'yarn' 包管理工具。然后，你可以在类 Unix 系统上运行以下命令来下载所需的包并构建 bundle：

```bash
(venv) $ cd $PGADMIN4_SRC
(venv) $ make install-node
(venv) $ make bundle
```

在 Windows 系统（其中“make”不可用）上，可以使用以下命令：

```
C:\> cd $PGADMIN4_SRC\web
C:\$PGADMIN4_SRC\web> yarn install
C:\$PGADMIN4_SRC\web> yarn run bundle
```

# 创建 pgAdmin 主题

要创建一个 pgAdmin 主题，您需要在 *web/pgadmin/static/scss/resources* 下创建一个目录。复制示例文件 *\_theme.variables.scss.sample* 到新目录并重命名为 *\_theme.variables.scss*。更改所需的颜色十六进制值并打包 pgAdmin。您还可以在主题目录中添加一个预览图片，文件名为 *<dir name>\_preview.png*。建议预览图片不要过大，以免在慢速网络上加载时间过长。运行 *yarn run bundle* 即可。无需其他更改，pgAdmin 打包程序会读取该目录并创建其他所需条目以供偏好设置使用。

主题的名称来源于目录名称。下划线 (\_) 和破折号 (-) 将被替换为空格，并且结果将被转换为驼峰命名法。

# 编写文档

为了构建文档，虚拟环境中还需要安装一个额外的 Python 包。这可以通过 pip 包管理器安装：

```bash
$ source venv/bin/activate
(venv) $ pip install Sphinx
(venv) $ pip install sphinxcontrib-youtube
```

文档可以使用位于 *$PGADMIN4\_SRC* 的 Makefile 构建，例如：

```bash
(venv) $ make docs
```

构建后的输出可以在 *$PGADMIN4\_SRC/docs/en\_US/\_build/html/index.html* 找到

# 构建包

大多数包可以使用位于 $PGADMIN4\_SRC 的 Makefile 构建，前提是已经完成了上述的所有设置和配置。

要构建源代码 tarball：

```bash
(venv) $ make src
```

要构建一个 PIP 轮子，激活一个配置了所有所需包的 Python 3 虚拟环境，然后运行：

```bash
(venv) $ make pip
```

要构建 macOS 应用包，请参阅 *pkg/mac/README*。

要构建 Windows 安装程序，请参阅 *pkg/win32/README.txt*。

# 创建数据库迁移

为了对 SQLite 数据库进行更改，请导航到 'web' 目录：

```bash
(venv) $ cd $PGADMIN4_SRC/web
```

使用以下命令创建一个迁移文件：

```bash
(venv) $ FLASK_APP=pgAdmin4.py flask db revision
```

这将在 $PGADMIN4_SRC/web/migrations/versions/ . Add any changes to the 'upgrade' function. Increment the SCHEMA_VERSION in $ PGADMIN4\_SRC/web/pgadmin/model/**init**.py 文件中创建一个文件。

无需增加 SETTINGS\_SCHEMA\_VERSION。

# 支持

如需支持选项，请参见 [https://www.pgadmin.org/support/](https://www.pgadmin.org/support/)。

# 安全问题

如果您想报告 pgAdmin 的安全问题，请发送邮件至 **security (at) pgadmin (dot) org**。

请注意，此地址仅用于报告您认为在 pgAdmin、pgAgent 和 pgAdmin 网站的设计或代码中发现的安全问题。不应用于提问安全相关的问题。

# 项目信息

pgAdmin 4 的 GitHub 项目可以在以下地址找到：

[https://github.com/pgadmin-org/pgadmin4](https://github.com/pgadmin-org/pgadmin4)

请将任何更改提交为针对 *master* 分支的 Pull Requests。 请在 *pgadmin-org/pgadmin4* 仓库中提交更改。

如果您想讨论 pgAdmin 4，或为该项目做贡献，请使用 pgAdmin Hackers 邮件列表：

[pgadmin-hackers@postgresql.org](mailto:pgadmin-hackers@postgresql.org)