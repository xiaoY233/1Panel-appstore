## 使用说明


> 如果需要显卡加速，安装的时候，请选择编辑`compose`文件，然后编辑显卡加速相关的配置。

***
已添加功能：
## 1. emby-erx Emby 增强/美化 插件

- 作者：[https://github.com/Nolovenodie/emby-crx](https://github.com/Nolovenodie/emby-crx)  
开启请在/config/config/ext.sh 添加媒体库ID 再重启容器和Ctrl+F5刷新网页

## 2. dd-danmaku Emby 弹幕库插件

- 作者：[https://github.com/RyoLee/dd-danmaku](https://github.com/RyoLee/dd-danmaku)  
开启/关闭 请在/config/config/ext.sh 中设置

## 3. emby调用外部播放器

- 作者：[https://github.com/bpking1/embyExternalUrl](https://github.com/bpking1/embyExternalUrl) 开启/关闭 请在/config/config/ext.sh 中设置

安卓与电视客户端：[http://res.ssr0.cn:8000/?/Emby/](http://res.ssr0.cn:8000/?/Emby/)

ext.sh (docker/config/ext.sh)扩展脚本：  
脚本更新需要自己手动添加，或者删除原脚本重启容器更新
```bash
#!/bin/sh

######## 说明 2023-07-30 ########
#一个sh脚本，容器每次启动时运行
#方便自定义添加功能
#################################


echo "Emby扩展启动脚本"

#去掉下行注释可以关闭次脚本
#exit 0

########下面可以自行添加功能########

## 修改容器hosts

#echo -e "13.226.210.20     api.themoviedb.org" >> /etc/hosts
#echo -e "13.225.142.99     api4.thetvdb.com" >> /etc/hosts

## Emby-crx 美化 媒体库ID为空时不启用

## 媒体库id，用逗号分隔。进入媒体库后url里的parentId
## MediaId="21466,21463"
MediaId=""

## 扩展插件: 
# embyLaunchPotplayer 外部播放
# ede.user 弹幕
# actorPlus 未知演员隐藏
extmod='["embyLaunchPotplayer","ede.user","actorPlus"]'

sed -i '/\ extmod/s/\[.*\]/'$extmod'/g' /system/dashboard-ui/ext.js

exit 0
```
