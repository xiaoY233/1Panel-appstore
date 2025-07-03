## 关于

Transmission 是一个快速、易用且免费的 BitTorrent 客户端。它有几种版本：

*   原生 macOS 图形用户界面应用程序
*   适用于 Linux、BSD 等的 GTK+ 和 Qt 图形用户界面应用程序
*   一个基于 Qt 的 Windows 兼容图形用户界面应用程序
*   一个无头守护进程，用于服务器和路由器
*   一个用于远程控制上述任何一项的网页界面

更多信息，请访问 [https://transmissionbt.com/](https://transmissionbt.com/)

## 文档

[Transmission 的文档](https://github.com/transmission/transmission/blob/main/docs/README.md)目前过时，但团队最近已经开始了一个新项目来更新它，并在寻找志愿者。如果你感兴趣，请随时提交拉取请求！

## 命令行界面注意事项

Transmission 完全支持 transmission-remote，这是首选的命令行客户端。

有三个独立工具分别用于检查、创建和编辑.torrent 文件：transmission-show、transmission-create 和 transmission-edit。

在开发传输-远程之前，创建了独立客户端传输-cli。传输-cli 一次只能处理一个种子文件，现已弃用，主要为了支持依赖它的旧硬件。在几乎所有情况下，应使用传输-远程替代。

不同的发行版可以选择将这些工具中的任何一个或全部打包成一个或多个单独的包。

## 构建

传输有一个 Xcode 项目文件（Transmission.xcodeproj），用于在 Xcode 中构建。

如需更详细的描述和依赖信息，请访问文档中的[如何构建传输](https://github.com/transmission/transmission/blob/main/docs/Building-Transmission.md) 。

### 从命令行构建 Transmission 发行版

```
$ tar xf transmission-3.00.tar.xz
$ cd transmission-3.00
$ mkdir build
$ cd build
# Use -DCMAKE_BUILD_TYPE=RelWithDebInfo to build optimzed binary with debug information. (preferred)
# Use -DCMAKE_BUILD_TYPE=Release to build full optimized binary.
$ cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
$ make
$ sudo make install
```

### 从夜间构建构建 Transmission

从 [https://build.transmissionbt.com/job/trunk-linux/](https://build.transmissionbt.com/job/trunk-linux/) 下载一个 tarball，并按照上一节中的步骤操作。

如果你是第一次从源代码构建程序，通常从 Git 构建会比从夜间构建更简单。

### 从 Git 构建 Transmission（首次构建）

```
$ git clone https://github.com/transmission/transmission Transmission
$ cd Transmission
$ git submodule update --init --recursive
$ mkdir build
$ cd build
# Use -DCMAKE_BUILD_TYPE=RelWithDebInfo to build optimzed binary with debug information. (preferred)
# Use -DCMAKE_BUILD_TYPE=Release to build full optimized binary.
$ cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
$ make
$ sudo make install
```

### 从 Git 更新构建 Transmission

```
$ cd Transmission/build
$ make clean
$ git submodule foreach --recursive git clean -xfd
$ git pull --rebase --prune
$ git submodule update --init --recursive
# Use -DCMAKE_BUILD_TYPE=RelWithDebInfo to build optimzed binary with debug information. (preferred)
# Use -DCMAKE_BUILD_TYPE=Release to build full optimized binary.
$ cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
$ make
$ sudo make install
```

## 贡献

### 代码风格

建议将编辑器配置为使用此仓库根目录下的 .clang-format 文件以及 web/package.json 中的 eslint/prettier 规则。

如果出于某种原因你不愿意或无法这样做，你可以使用一个 shell 脚本：\`./code\_style.sh\`

### 翻译

请参见[语言翻译](https://github.com/transmission/transmission/blob/main/docs/Translating.md) 。

## 赞助商

<table data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"><tbody data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"><tr data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"><td style="text-align: center;" data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"></td><td data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e" data-immersive-translate-paragraph="1">macOS CI 构建运行在由 MacStadium 提供的 M1 Mac Mini 上</td></tr><tr data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"><td style="text-align: center;" data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e"></td><td data-immersive-translate-walked="a3af2032-01f9-4d17-8491-c35eb1be921e" data-immersive-translate-paragraph="1">免费的代码签名服务由 SignPath.io 提供，证书由 SignPath 基金会 发放</td></tr></tbody></table>