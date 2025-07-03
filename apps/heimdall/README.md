# 海姆达尔

[![Heimdall_Banner](https://i.imgur.com/iuV8w3y.png)](https://heimdall.site)

[![Discord](https://img.shields.io/discord/354974912613449730.svg)](https://discord.gg/CCjHKn4) [![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/heimdall.svg)](https://hub.docker.com/r/linuxserver/heimdall/) [![firsttimersonly](https://img.shields.io/badge/first--timers--only-friendly-blue.svg)](https://www.firsttimersonly.com/) [![Paypal](https://heimdall.site/img/paypaldonate.svg)](https://www.paypal.me/heimdall)

* * *

访问网站 - [https://heimdall.site](https://heimdall.site)

* * *

## 关于

正如其名，海姆达尔应用仪表板是您所有网络应用的仪表板。不过，它并不仅限于应用，您还可以添加您喜欢的任何链接。

海姆达尔是一个优雅的解决方案，用于组织您所有的网络应用程序。它专注于这个目的，所以您不会在书签的海洋中丢失链接。

为什么不将其用作您的浏览器起始页呢？它甚至能够包含使用谷歌、必应或 DuckDuckGo 的搜索栏。

![Heimdall demo animation](https://i.imgur.com/MrC4QpN.gif)

## 视频

如果您想快速查看其使用视频，请访问 [https://youtu.be/GXnnMAxPzMc](https://youtu.be/GXnnMAxPzMc)

## 支持的应用程序

您可以使用该应用链接到任何网站或应用程序，但基础应用程序将自动填充应用程序的图标并为磁贴提供默认颜色。此外，增强型应用程序允许您向应用程序的 API 提供详细信息，让您可以直接在仪表板上查看实时统计数据。例如，NZBGet 和 Sabnzbd 增强型应用程序将在下载时显示队列大小和下载速度。

支持的应用程序通过在添加应用程序时在标题字段中输入的应用程序标题来识别。例如，要添加 pfSense 的链接，请在标题字段中输入“p”，然后从支持的应用程序列表中选择“pfSense”。

[![enhancedapps](https://img.shields.io/badge/dynamic/json.svg?label=Enhanced%20Apps&url=https%3A%2F%2Fapps.heimdall.site%2Fstats&query=enhanced_apps&colorB=3f8483&style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAjCAMAAACw/5reAAAAnFBMVEUAAADu7u7u7u7u7u7u7u7x8fHu7u7u7u7u7u7u7u7u7u7u7u7r6+vu7u7v7+/u7u7t7e3v7+/v7+/u7u7u7u7u7u7u7u7u7u7u7u7u7u7v7+/u7u7p6ent7e3v7+/v7+/v7+/u7u7u7u7u7u7u7u7t7e3////u7u7u7u7u7u7u7u7w8PDw8PDt7e3u7u7t7e3s7Ozu7u7t7e3u7u4TnCP6AAAAM3RSTlMA+9n3phHw3czC088M5Y5zG6mflWdJFumyfj4sB2NeTi7hiWlDOQPGt5lsMiG9hFQntpFqxQJtAAABnElEQVQoz2WRh3KrQAxFtYWO6ZhucItrynv6/3/LFnA24c6wurpnYBkJZvXduNix6+GXTo8qWnxUPU4m2w0O1ktTozPsftiZpejGlm7C2MWUnRcWOohIo36+PaKyDZdLUOgDXvqQfaT9kwkfvP3AN18E7Kl8hkJHMHSXSSadxaTtTNjJhMkfjFHKMqGlolg4T7mtCbcq8gBCotxkwklFLIQSlQoTHnVWQqzNxYQuzpfmqGVMc5ijHK5yAuIhxbZ5p/S92RZkjv5BKs6aosSIr0JrcXBo1FtICVINKRKK6u0GnraoN84O5KbhjRwYzxCJnQCMtotkdNxjq2F7dJ2RoGuXIBTvc3ROthdmat6hZ7cOyfcxKGV+wTxBkxQxTQTzWOFny/7qS2nzx37T7nbtZj9xu7zUr/323nVy0sQnhwMJktSZrl5v7CjgSQmWi+haUCY8sH4tyc/FGSKGouS+WqBJm8U2NIE/+nLu2tzpF/xVNGy02QzRClafC/ysVpDzQJuA8xXsKl8bv+pgpXz57H9Yy3J1lQNY62wUrW+mdzrylWS0QwAAAABJRU5ErkJggg==)](https://apps.heimdall.site/applications/enhanced)

[![foundationapps](https://img.shields.io/badge/dynamic/json.svg?label=Foundation%20Apps&url=https%3A%2F%2Fapps.heimdall.site%2Fstats&query=foundation_apps&colorB=3f8483&style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAjCAMAAACw/5reAAAAnFBMVEUAAADu7u7u7u7u7u7u7u7x8fHu7u7u7u7u7u7u7u7u7u7u7u7r6+vu7u7v7+/u7u7t7e3v7+/v7+/u7u7u7u7u7u7u7u7u7u7u7u7u7u7v7+/u7u7p6ent7e3v7+/v7+/v7+/u7u7u7u7u7u7u7u7t7e3////u7u7u7u7u7u7u7u7w8PDw8PDt7e3u7u7t7e3s7Ozu7u7t7e3u7u4TnCP6AAAAM3RSTlMA+9n3phHw3czC088M5Y5zG6mflWdJFumyfj4sB2NeTi7hiWlDOQPGt5lsMiG9hFQntpFqxQJtAAABnElEQVQoz2WRh3KrQAxFtYWO6ZhucItrynv6/3/LFnA24c6wurpnYBkJZvXduNix6+GXTo8qWnxUPU4m2w0O1ktTozPsftiZpejGlm7C2MWUnRcWOohIo36+PaKyDZdLUOgDXvqQfaT9kwkfvP3AN18E7Kl8hkJHMHSXSSadxaTtTNjJhMkfjFHKMqGlolg4T7mtCbcq8gBCotxkwklFLIQSlQoTHnVWQqzNxYQuzpfmqGVMc5ijHK5yAuIhxbZ5p/S92RZkjv5BKs6aosSIr0JrcXBo1FtICVINKRKK6u0GnraoN84O5KbhjRwYzxCJnQCMtotkdNxjq2F7dJ2RoGuXIBTvc3ROthdmat6hZ7cOyfcxKGV+wTxBkxQxTQTzWOFny/7qS2nzx37T7nbtZj9xu7zUr/323nVy0sQnhwMJktSZrl5v7CjgSQmWi+haUCY8sH4tyc/FGSKGouS+WqBJm8U2NIE/+nLu2tzpF/xVNGy02QzRClafC/ysVpDzQJuA8xXsKl8bv+pgpXz57H9Yy3J1lQNY62wUrW+mdzrylWS0QwAAAABJRU5ErkJggg==)](https://apps.heimdall.site/applications/foundation)

## 安装

除了 Laravel 8 的依赖项，即 PHP >= 7.4.32、BCMath PHP 扩展、INTL PHP 扩展、Ctype PHP 扩展、Fileinfo PHP 扩展、JSON PHP 扩展、Mbstring PHP 扩展、OpenSSL PHP 扩展、PDO PHP 扩展、Tokenizer PHP 扩展、XML PHP 扩展之外，Heimdall 还需要 sqlite 支持和 zip 支持（php-zip）。

如果你发现无法更改背景，请确保在 php.ini 中启用了 `php_fileinfo`。我相信它应该是默认启用的，但一位用户在 Windows 系统上遇到了这个问题。

安装非常简单，只需将仓库克隆到某个位置，或者下载并解压 zip/tar 文件，然后将 httpd 文档根目录指向 `/public` 文件夹，然后创建.env 文件并生成加密密钥（所有这些操作都由 docker 为你处理）。

```
cd /path/to/heimdall
cp .env.example .env
php artisan key:generate
```

对于简单测试，你只需进入文件夹，输入 `php artisan serve`

也存在支持 x86-64、armhf 和 arm64 的多架构 Docker，如何在

*   [https://hub.docker.com/r/linuxserver/heimdall/](https://hub.docker.com/r/linuxserver/heimdall/)

## 更新

要更新您的实例，只需克隆此仓库或下载包含新版本的 zip/tar 文件，并将其复制到旧安装上。

## 搜索提供商

v2.3.0 版本增加了用户自定义搜索选项的功能。

选项存储在 `/storage/app/searchproviders.yaml` （在 Docker 安装中为 `/config/www/searchproviders.yaml` ），您可以随意调整选项顺序，添加新的选项，删除不使用的选项等。

请考虑向 [https://github.com/linuxserver/Heimdall/discussions/categories/search-providers](https://github.com/linuxserver/Heimdall/discussions/categories/search-providers) 做出贡献，以帮助他人添加新的选项。

列表顶部的项目`瓷砖`允许您通过名称在仪表板上搜索应用程序，当您有很多图标时非常有用。

## 新背景图片未设置

如果您正在使用 docker 镜像或默认的 php 安装，您可能会发现超过 2MB 的图片无法设置为背景图片，您只需更改 php.ini 中的 `upload_max_filesize`。

如果您正在使用 linuxserver.io docker 镜像，只需编辑 `/path/to/config/php/php-local.ini` ，并在末尾添加 `upload_max_filesize = 30M`。

## Docker 和增强应用

如果您正在运行 docker，并且您使用的 EnhancedApps 也位于 docker 中，您可能需要使用 docker 网络地址来与它们通信。

您可以通过在配置部分使用 `http(s)://docker_name:port` 来实现这一点。代替名称，您可以使用内部 Docker IP，这通常以 `172.` 开头。

## 语言

该应用已翻译成多种语言；然而，翻译质量有待提高。如果您想改进它们或帮助进行其他翻译，它们存储在 `/resources/lang/`。

要创建一种新的语言翻译，创建一个以 ISO 3166-1 alpha-2 代码命名的文件夹，将 `app.php` 从 `/resources/lang/en/app.php` 复制到您的文件夹中，并替换英文字符串。

完成之后，创建一个 pull request。

目前添加的语言有

*   布列塔尼语
*   中文
*   丹麦语
*   荷兰语
*   英语
*   芬兰语
*   法语
*   德语
*   希腊语
*   匈牙利语
*   意大利语
*   日语
*   韩语
*   伦巴第
*   挪威语
*   波兰语
*   葡萄牙语
*   俄语
*   斯洛文尼亚语
*   西班牙语
*   瑞典语
*   土耳其

## Web 服务器配置

### Apache

应用程序附带一个 `.htaccess` 文件，然而，许多 Apache 安装默认禁止 `.htaccess` 文件。您会注意到一些链接无法正常工作，如 `/settings`。此外，如果尚未启用，还需要启用 mod-rewrite 模块。

#### 修复和绕过选项

##### \- Apache 全局允许 .htaccess

在您的 Apache 配置中找到 `AllowOverride None` 行，并将其更改为 `AllowOverride All`

##### \- Apache vhost 配置允许 .htaccess

在 apache vhost 配置中的 `<Directory />` 块中添加 `AllowOverride All`

##### \- 在 apache 配置中添加.htaccess 内容

您可以将完整的 `.htaccess` 添加到您的 apache 配置中，这样您就不需要允许 `.htaccess` 文件。您甚至可以在将其插入到 apache 配置中时缩短 `.htaccess` 的内容：

```
Options +FollowSymLinks
RewriteEngine On

RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^ index.php [L]
```

#### 更多信息

更多关于 `AllowOverride` 的信息可以在这里找到： [https://httpd.apache.org/docs/2.4/mod/core.html#allowoverride](https://httpd.apache.org/docs/2.4/mod/core.html#allowoverride)

### Nginx

如果您正在使用 Nginx，您的站点配置中的以下指令将把所有请求导向 `index.php` 前端控制器：

```
location / {
    try_files $uri $uri/ /index.php?$query_string;
}
```

有人使用相同的 nginx 配置来运行这个和反向代理 Plex，Plex 是从 `/web` 提供的，所以它们的位置干扰了 `/webfonts`。

因此，如果你的字体没有显示，因为你有一个位于 `/web` 的位置，请添加以下内容

```
location /webfonts {
    try_files $uri $uri/;
}
```

如果有任何其他位置可能会干扰到 `/public` 文件夹中的任何文件夹，您可能也需要对它们做同样的处理，但这只是一个极边缘的情况。

### 反向代理

如果您想反向代理此应用，我们建议使用我们的 letsencrypt/nginx docker 镜像：\[SWAG - Secure Web Application Gateway\](#0) 您可以从根位置或子域名（目前不支持子文件夹方法）进行反向代理。对于 HTTPS 代理，请确保您使用 Heimdall web 服务器的 HTTPS 端口，否则某些链接可能会中断。您可以通过 `.htpasswd` 添加安全性。

```
location / {
    auth_basic "Restricted";
    auth_basic_user_file /config/nginx/.htpasswd;
    include /config/nginx/proxy.conf;
    proxy_set_header X-Forwarded-Proto https;
    proxy_pass http://heimdall;
}
```

### 自签名证书和本地 CA

默认情况下，Heimdall 使用标准证书捆绑文件（`ca-certificates.crt`）来验证 HTTPS 站点，并将忽略放置在 `/etc/ssl/certs` 中的附加证书。如果您希望使用带有自签名证书或使用您自己的本地 CA 签名的证书的增强型 HTTPS 站点应用，您可以覆盖默认捆绑：

*   创建一个包含所有 CA 和证书的统一证书文件 `.pem`，以便 Heimdall 进行验证。例如，如果您同时使用 Let's Encrypt 和本地 CA 为您的内部应用，将 Let's Encrypt 的中间 CA（通过浏览器导出）和您的本地 CA `cert.pem`（或任何数量的自签名证书）合并到一个 `heimdall.pem` 文件中。
*   将 `heimdall.pem` 放入容器中（如果您使用 Docker），例如将其放置在映射到 `/config` 的路径中。确保 Heimdall 用户有读取权限（`chmod a+r`）。
*   在 `/config/php/php-local.ini` 中设置 `openssl.cafile` 设置为您证书包：

```
# /config/php/php-local.ini
openssl.cafile = /config/heimdall.pem
```

重启容器，增强后的应用现在应该能够访问您的本地 HTTP 网站。此配置将在更新或重新创建 Heimdall 容器时保持不变。

## 离线运行

应用程序列表托管在 GitHub 上，如果您想在无外部连接的情况下运行，有以下几种选择：

1.  克隆仓库并自行托管，查看.gitignore 文件了解如何生成应用程序列表。
2.  下载应用程序列表并将其存储为名为 `list.json` 的可供 heimdall 访问的 json 文件。

只需将以下内容添加到您的 `.env``APP_SOURCE=http://localhost/`，其中 `http://localhost/` 是不带文件名的应用列表路径，所以如果您的文件存储在 `https://heimdall.local/list.json` ，您应该输入 `APP_SOURCE=https://heimdall.local/`

## 支持

[https://discord.gg/CCjHKn4](https://discord.gg/CCjHKn4) 或通过 GitHub issues

## 捐赠

如果您想表达感谢，请随意使用下面的链接。

[![PayPal](https://heimdall.site/img/paypaldonate.svg)](https://www.paypal.me/heimdall)

## 致谢

*   PHP 框架 - [Laravel](https://laravel.com/)
*   图标 - [FontAwesome 5](https://fontawesome.com/)
*   JavaScript - [jQuery](https://jquery.com/)
*   颜色选择器 - [Huebee](http://huebee.buzz/)
*   背景图片 - [pexels](https://www.pexels.com)
*   三角形图案库 - [Trianglify](https://github.com/qrohlf/trianglify)
*   Linuxserver.io 上的每个人都帮助了这款应用，还有不要忘了 IronicBadger，正是以下问题开启了这一切：

```
you know, i would love something like this landing page for all my servers apps
that gives me the ability to pin favourites
and / or search
@Stark @Kode do either of you think you'd be able to rustle something like this up ?
```

## 许可证

此应用是开源软件，许可协议为 [MIT 许可协议](https://opensource.org/licenses/MIT) 。