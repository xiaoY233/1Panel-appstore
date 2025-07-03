FROM node:16-alpine

# 安装 git，创建工作目录，并克隆代码
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    mkdir -p /usr/src/app && \
    git clone https://github.com/wh-iterabb-it/meowfacts /usr/src/app

# 切换到工作目录
WORKDIR /usr/src/app

# 安装 Node.js 依赖
RUN npm install

# 暴露服务器端口
EXPOSE 3000-5001

# 启动应用程序
CMD ["npm", "start"]
