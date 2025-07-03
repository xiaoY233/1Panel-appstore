# 使用说明

建议搭配`adguardhome`使用，`mosdns`作为上游，`adguardhome`开启`DOH`等。

**需要注意国内法律与规则问题**

容器内默认端口以`config.yaml`文件为准，

有需要的可以自行编辑`config.yaml`修改功能。

应用目录下有个更新附属文件的脚本，可以将其添加到计划任务，以更新所需文件。

计划任务添加如下，按需修改：

```
# 需要修改以下为具体实际路径
cd /opt/1panel/apps/local/mosdns/xxx/data/ && \
bash update.sh
```

## 可自定义文件说明

- force-cn.txt      强制国内解析域名
- force-nocn.txt    强制国外解析域名
- hosts             自定义hosts

# 原始相关

## mosdns

功能概述、配置方式、教程等，详见: [wiki](https://irine-sistiana.gitbook.io/mosdns-wiki/)

下载预编译文件、更新日志，详见: [release](https://github.com/IrineSistiana/mosdns/releases)

docker 镜像: [docker hub](https://hub.docker.com/r/irinesistiana/mosdns)
