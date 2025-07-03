#!/bin/sh

# 递归地将/app/picx/目录下的内容复制到nginx网页目录
cp -r /app/picx/* /usr/share/nginx/html/

# 设置nginx网页目录的所有者和组为nginx，确保nginx服务器能够访问这些文件
chown -R nginx:nginx /usr/share/nginx/html

# 使用find命令递归地设置网页文件夹的权限为755，确保可读和可执行，但不可写
find /usr/share/nginx/html -type d -exec chmod 755 {} \;

# 使用find命令递归地设置网页文件的权限为644，确保所有者可读写，其他用户只可读
find /usr/share/nginx/html -type f -exec chmod 644 {} \;

# 启动nginx服务器，以前台方式运行
nginx -g 'daemon off;'
