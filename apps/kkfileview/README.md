# kkFileView
文档在线预览项目解决方案，项目使用流行的spring boot搭建，易上手和部署。万能的文件预览开源项目，基本支持主流文档格式预览，如：
1. 支持 doc, docx, xls, xlsx, xlsm, ppt, pptx, csv, tsv, dotm, xlt, xltm, dot, dotx,xlam, xla ,pages 等 Office 办公文档
2. 支持 wps, dps, et, ett, wpt 等国产 WPS Office 办公文档
3. 支持 odt, ods, ots, odp, otp, six, ott, fodt, fods 等OpenOffice、LibreOffice 办公文档
4. 支持 vsd, vsdx 等 Visio 流程图文件
5. 支持 wmf, emf 等 Windows 系统图像文件
6. 支持 psd ,eps 等 Photoshop 软件模型文件
7. 支持 pdf ,ofd, rtf 等文档
8. 支持 xmind 软件模型文件
9. 支持 bpmn 工作流文件
10. 支持 eml 邮件文件
11. 支持 epub 图书文档
12. 支持 obj, 3ds, stl, ply, gltf, glb, off, 3dm, fbx, dae, wrl, 3mf, ifc, brep, step, iges, fcstd, bim 等 3D 模型文件
13. 支持 dwg, dxf, dwf, iges , igs, dwt, dng, ifc, dwfx, stl, cf2, plt 等 CAD 模型文件
14. 支持 txt, xml(渲染), xbrl(渲染), md(渲染), java, php, py, js, css 等所有纯文本
15. 支持 zip, rar, jar, tar, gzip, 7z 等压缩包
16. 支持 jpg, jpeg, png, gif, bmp, ico, jfif, webp 等图片预览（翻转，缩放，镜像）
17. 支持 tif, tiff 图信息模型文件
18. 支持 tga 图像格式文件
19. 支持 svg 矢量图像格式文件
20. 支持 mp3,wav,mp4,flv 等音视频格式文件
21. 支持 avi,mov,rm,webm,ts,rm,mkv,mpeg,ogg,mpg,rmvb,wmv,3gp,ts,swf 等视频格式转码预览
22. 支持 dcm 等医疗数位影像预览
23. 支持 drawio 绘图预览

> 基于当前良好的架构模式，支持的文件类型在进一步丰富中
### 项目特性

- 使用 spring-boot 开发，预览服务搭建部署非常简便
- rest 接口提供服务，跨语言、跨平台特性(java,php,python,go,php，....)都支持，应用接入简单方便
- 抽象预览服务接口，方便二次开发，非常方便添加其他类型文件预览支持
- 最最重要 Apache 协议开源，代码 pull 下来想干嘛就干嘛

### 官网及文档

地址：[https://kkview.cn](https://kkview.cn/)

### 在线体验
> 请善待公共服务，会不定时停用

地址：[https://file.kkview.cn](https://file.kkview.cn)

### 项目文档（Project documentation）
1. 详细使用文档：https://kkview.cn/zh-cn/docs/home.html

### 联系我们，加入组织
> 我们会用心回答解决大家在项目使用中的问题，也请大家在提问前至少 Google 或 baidu 过，珍爱生命远离无效的交流沟通

<img src="https://github.com/kekingcn/kkFileView/raw/master/doc/github%E6%98%9F%E7%90%83.png" width="60%">

### 文档预览效果
#### 1. 文本预览
支持所有类型的文本文档预览， 由于文本文档类型过多，无法全部枚举，默认开启的类型如下 txt,html,htm,asp,jsp,xml,xbrl,json,properties,md,gitignore,log,java,py,c,cpp,sql,sh,bat,m,bas,prg,cmd  
文本预览效果如下  
![文本预览效果如下](https://kkview.cn/img/preview/preview-text.png)      

#### 2. 图片预览
支持jpg，jpeg，png，gif等图片预览（翻转，缩放，镜像），预览效果如下  
![图片预览](https://kkview.cn/img/preview/preview-image.png)  

#### 3. word文档预览
支持doc，docx文档预览，word预览有两种模式：一种是每页word转为图片预览，另一种是整个word文档转成pdf，再预览pdf。两种模式的适用场景如下  
* 图片预览：word文件大，前台加载整个pdf过慢
* pdf预览：内网访问，加载pdf快
图片预览模式预览效果如下  
![word文档预览1](https://kkview.cn/img/preview/preview-doc-image.png)  
pdf预览模式预览效果如下  
![word文档预览2](https://kkview.cn/img/preview/preview-doc-pdf.png)  

#### 4. ppt文档预览
支持ppt，pptx文档预览，和word文档一样，有两种预览模式  
图片预览模式预览效果如下  
![ppt文档预览1](https://kkview.cn/img/preview/preview-ppt-image.png)  
pdf预览模式预览效果如下  
![ppt文档预览2](https://kkview.cn/img/preview/preview-ppt-pdf.png)  

#### 5. pdf文档预览
支持pdf文档预览，和word文档一样，有两种预览模式   
图片预览模式预览效果如下  
![pdf文档预览1](https://kkview.cn/img/preview/preview-pdf-image.png)  
pdf预览模式预览效果如下   
![pdf文档预览2](https://kkview.cn/img/preview/preview-pdf-pdf.png)    

#### 6. excel文档预览
支持xls，xlsx文档预览，预览效果如下  
![excel文档预览](https://kkview.cn/img/preview/preview-xls.png)  

#### 7. 压缩文件预览
支持zip,rar,jar,tar,gzip等压缩包，预览效果如下  
![压缩文件预览1](https://kkview.cn/img/preview/preview-zip.png)  
可点击压缩包中的文件名，直接预览文件，预览效果如下  
![压缩文件预览2](https://kkview.cn/img/preview/preview-zip-inner.png)  

#### 8. 多媒体文件预览
理论上支持所有的视频、音频文件，由于无法枚举所有文件格式，默认开启的类型如下  
mp3,wav,mp4,flv  
视频预览效果如下  
![多媒体文件预览1](https://kkview.cn/img/preview/preview-video.png)  
音频预览效果如下  
![多媒体文件预览2](https://kkview.cn/img/preview/preview-audio.png)  

#### 9. CAD文档预览
支持CAD dwg文档预览，和word文档一样，有两种预览模式  
图片预览模式预览效果如下  
![cad文档预览1](https://kkview.cn/img/preview/preview-cad-image.png)  
pdf预览模式预览效果如下  
![cad文档预览2](https://kkview.cn/img/preview/preview-cad-pdf.png)  
考虑说明篇幅原因，就不贴其他格式文件的预览效果了，感兴趣的可以参考下面的实例搭建下

#### 10. Excel文件纯前端渲染效果

![Excel文件纯前端渲染效果](https://kkview.cn/img/preview/preview-xlsx-web.png)  

#### 11. 流程图bpmn文件预览效果

![流程图bpmn文件预览效果](https://kkview.cn/img/preview/preview-bpmn.png)  

#### 12. 3D模型文件预览效果：

![3D模型文件预览效果](https://kkview.cn/img/preview/preview-3ds.png)  

#### 13. dcm医疗数位影像文件预览效果：

![dcm医疗数位影像文件预览效果](https://kkview.cn/img/preview/preview-dcm.png) 

#### 14. drawio流程图预览效果：

![dcdrawio流程图预览效果](https://kkview.cn/img/preview/preview-drawio.png) 

### 快速开始
> 项目使用技术
- spring boot： [spring boot开发参考指南](http://www.kailing.pub/PdfReader/web/viewer.html?file=springboot)
- freemarker
- redisson 
- jodconverter

> 依赖外部环境
- redis (可选，默认不用)
- OpenOffice 或者 LibreOffice( Windows 下已内置，Linux 脚本启动模式会自动安装，Mac OS 下需要手动安装)

1. 第一步：pull 项目 https://github.com/kekingcn/file-online-preview.git

3. 第二步：运行 ServerMain 的 main 方法，服务启动后，访问 http://localhost:8012/
会看到如下界面，代表服务启动成功
   
![输入图片说明](https://gitee.com/uploads/images/2017/1213/100221_ea15202e_492218.png "屏幕截图.png")

### 关于引用
ofd    引用于 [ofdview ](https://gitee.com/cnofd/ofdview ) 开源协议 Apache-2.0  
CAD    引用于 aspose-cad 测试版本 商用请自行购买  
xmind  引用于 [ xmind-embed-viewer](https://github.com/xmindltd/xmind-embed-viewer) 开源协议 MIT  
epub   引用于 [ epub.js](https://github.com/futurepress/epub.js) 开源协议 BSD许可证  
压缩包 引用于 [sevenzipjbinding](https://github.com/borisbrodski/sevenzipjbinding )开源协议LGPL  
3D     引用于 [Online3DViewer](https://github.com/kovacsv/Online3DViewer )开源协议MIT  
drawio 引用于 [drawio](https://github.com/jgraph/drawio )开源协议 Apache-2.0  
bpmn流程图     引用于 [bpmn-js](https://github.com/bpmn-io/bpmn-js ) 自定义协议 保留水印 具体自行查看  
dcm医疗数位影像  引用于 [dcmjs](https://github.com/dcmjs-org/dcmjs )开源协议MIT  

### 使用登记
如果这个项目解决了你的实际问题，可在 https://gitee.com/kekingcn/file-online-preview/issues/IGSBV
登记下，如果节省了你的三方预览服务费用，也愿意支持下的话，可点击下方【捐助】请作者喝杯咖啡，也是非常感谢

### Stars

#### GitHub

[![Stargazers over time](https://starchart.cc/kekingcn/kkFileView.svg)](https://starchart.cc/kekingcn/kkFileView)

### 鸣谢
- 本项目诞生于[凯京集团]，在取得公司高层同意后以 Apache 协议开源出来反哺社区，在此特别感谢凯京集团，以及集团领导[@唐老大](https://github.com/tangshd)的支持、@端木详笑的贡献。
- 本项目已脱离公司由[KK开源社区]维护发展壮大，感谢所有给 kkFileView 提 Issue 、Pr 开发者
- 本项目引入的第三方组件已在 '关于引用' 列表列出，感谢这些项目，让 kkFileView 更出色
