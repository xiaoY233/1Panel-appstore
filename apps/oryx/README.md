# ORYX

[![](https://img.shields.io/twitter/follow/srs_server?style=social)](https://twitter.com/srs_server)
[![](https://badgen.net/discord/members/bQUPDRqy79)](https://discord.gg/bQUPDRqy79)
[![](https://ossrs.net/wiki/images/wechat-badge4.svg)](https://ossrs.net/lts/zh-cn/contact#discussion)
[![](https://ossrs.net/wiki/images/do-btn-srs-125x20.svg)](https://marketplace.digitalocean.com/apps/srs)
[![](https://opencollective.com/srs-server/tiers/badge.svg)](https://opencollective.com/srs-server)

Oryx(SRS Stack) 是一个一站式、开箱即用且开源的视频解决方案，用于创建在云端或通过自托管方式提供在线视频服务，包括直播和 WebRTC。

> 注意：我们将项目从 SRS Stack 重命名为 Oryx，因为 AI 助手仅需一个新的名称来识别SRS 和 SRS Stack。AI 助手对 SRS 和 SRS Stack 混淆不清。

Oryx 让您轻松创建在线视频服务。它使用 Go、Reactjs、SRS、FFmpeg 和 WebRTC 构建。支持 RTMP、WebRTC、HLS、HTTP-FLV 和 SRT 等协议。提供认证、多平台直播、录制、转码、虚拟直播活动、自动 HTTPS 以及易于使用的 HTTP Open API 等功能。

[![](https://ossrs.io/lts/en-us/img/Oryx-5-sd.png?v=1)](https://ossrs.io/lts/en-us/img/Oryx-5-hd.png)

> 注意：有关 Oryx 的更多详情，请访问 [link](https://www.figma.com/file/Ju5h2DZeJMzUtx5k7D0Oak/Oryx).

## Usage

在一个 docker 中运行 Oryx，然后在浏览器中打开 http://localhost :

```bash
docker run --restart always -d -it --name oryx -v $HOME/data:/data \
  -p 80:2022 -p 443:2443 -p 1935:1935 -p 8000:8000/udp -p 10080:10080/udp \
  ossrs/oryx:5
```

> 重要提示：重启容器时为避免数据丢失，请挂载 `/data` 卷。例如，如果你将 `/data` 挂载到 `$HOME/data`，所有数据都将存储在 `$HOME/data` 文件夹中。请确保根据你希望的目录进行修改

> 重要：在浏览器中使用 WebRTC WHIP 时，请避免使用 localhost 或 127.0.0.1，而是使用私有 IP（例如，https://192.168.3.85），
> 公共 IP（例如，https://136.12.117.13），或域名（例如，https://your-domain.com）。要设置 HTTPS，
> 请参阅[这篇帖子](https://blog.ossrs.io/how-to-secure-srs-with-lets-encrypt-by-1-click-cb618777639f)。

> 注意：在中国，使用 `registry.cn-hangzhou.aliyuncs.com/ossrs/oryx:5` 来加速 Docker 拉取过程
> 并确保设置了正确的语言。

Oryx 使用的端口：

* `80/tcp`: HTTP 端口，您也可以使用`2022`代替，例如`-p 2022:2022`等。
* `443/tcp`: HTTPS 端口，您也可以使用`2443`代替，例如`-p 2443:2443`等。
* `1935/tcp`: RTMP 端口，用于支持通过 RTMP 将流发布到 Oryx。
* `8000/udp`: WebRTC UDP 端口，用于传输 WebRTC 媒体数据，如 RTP 数据包。
* `10080/udp`: SRT UDP 端口，用于通过 SRT 协议支持发布流。

您可以修改 Oryx 的卷并将其导向不同的目录。

* `/data` 全局数据目录。
    * `.well-known` Let's Encrypt ACME 挑战的目录
    * `config` 用于存储密码、srs/redis/nginx/prometheus 配置以及 SSL 文件的.env 文件。
    * `dvr` dvr 存储目录，保存 dvr 文件。
    * `lego` LEGO Let's Encrypt ACME 挑战目录。
    * `record` 记录存储目录，保存记录文件。
    * `redis` Redis 数据目录，发布密钥和记录配置。
    * `signals` 信号存储目录，保存信号文件。
    * `upload` 上传存储目录，保存上传文件。
    * `vlive` 虚拟直播存储目录，保存视频文件。
    * `transcript` 同步字幕存储目录，保存字幕文件。
    * `nginx-cache` Nginx 缓存存储目录，保存缓存文件。
    * `srs-s3-bucket` AWS S3 兼容存储的挂载目录。

You can use environment variables to modify the settings.

* `MGMT_PASSWORD`: 管理员密码。
* `REACT_APP_LOCALE`: 国际化配置，`en` 或 `zh`，默认为 `en`。

> 注意：`MGMT_PASSWORD` 也保存在 `/data/config/.env` 中，您可以自行修改。

> 要访问更多环境变量，请参阅[环境](DEVELOPER.md#environments)部分。

## 赞助

您需要我们提供更多帮助吗？通过成为 SRS 的赞助商或支持者，我们可以为您提供所需的:

* 赞助者：每月 5 美元，通过 Discord 进行在线文本聊天支持。
* 赞助：每月 100 元，提供在线会议支持，每月一次 1 小时会议。

请访问 [OpenCollective](https://opencollective.com/srs-server) 成为赞助者或支持者，并发送
在 [Discord]（https://discord.gg/bQUPDRqy79）上直接给我发消息。我们目前正为用户提供支持。

[![](https://opencollective.com/srs-server/backers.svg?width=800&button=false)](https://opencollective.com/srs-server)

我们致力于建立一个非营利的开源社区，旨在帮助全球开发者创建您自己的高质量流媒体和 RTC 平台，以支持您的业务。

## FAQ

1. [English FAQ](https://ossrs.io/lts/en-us/faq-oryx)
1. [中文 FAQ](https://ossrs.net/lts/zh-cn/faq-oryx)

## Tutorials

- [x] Getting Started: [Blog](https://blog.ossrs.io/how-to-setup-a-video-streaming-service-by-1-click-e9fe6f314ac6), [EN](https://ossrs.io/lts/en-us/docs/v6/doc/getting-started-stack), [CN](https://ossrs.net/lts/zh-cn/docs/v5/doc/getting-started-stack).
- [x] Support WordPress Plugin: [Blog](https://blog.ossrs.io/publish-your-srs-livestream-through-wordpress-ec18dfae7d6f), [EN](https://ossrs.io/lts/en-us/blog/WordPress-Plugin), [CN](https://ossrs.net/lts/zh-cn/blog/WordPress-Plugin) or [WordPress Plugin](https://wordpress.org/plugins/srs-player).
- [x] Support Automatic HTTPS: [Blog](https://blog.ossrs.io/how-to-secure-srs-with-lets-encrypt-by-1-click-cb618777639f), [EN](https://ossrs.io/lts/en-us/blog/Oryx-Tutorial), [CN](https://ossrs.net/lts/zh-cn/blog/Oryx-HTTPS).
- [x] Support aaPanel to install on any linux: [Blog](https://blog.ossrs.io/how-to-setup-a-video-streaming-service-by-aapanel-9748ae754c8c), [EN](https://ossrs.io/lts/en-us/blog/BT-aaPanel), [CN](https://ossrs.net/lts/zh-cn/blog/BT-aaPanel).
- [x] Support DVR to local disk: [Blog](https://blog.ossrs.io/how-to-record-live-streaming-to-mp4-file-2aa792c35b25), [EN](https://ossrs.io/lts/en-us/blog/Record-Live-Streaming), [CN](https://mp.weixin.qq.com/s/axN_TPo-Gk_H7CbdqUud6g).
- [x] Support Virtual Live Streaming: [CN](https://mp.weixin.qq.com/s/I0Kmxtc24txpngO-PiR_tQ).
- [x] Support Stream IP Camera: [Blog](https://blog.ossrs.io/easily-stream-your-rtsp-ip-camera-to-youtube-twitch-or-facebook-c078db917149), [EN](http://ossrs.io/lts/en-us/blog/Stream-IP-Camera-Events), [CN](https://ossrs.net/lts/zh-cn/blog/Stream-IP-Camera-Events).
- [x] Support build small [HLS deliver CDN](https://github.com/ossrs/oryx/tree/main/scripts/nginx-hls-cdn) by Nginx.
- [x] Support Live Streaming: [CN](https://mp.weixin.qq.com/s/AKqVWIdk3SBD-6uiTMliyA).
- [x] Support Realtime SRT Streaming: [CN](https://mp.weixin.qq.com/s/HQb3gLRyJHHu56pnyHerxA).
- [x] Support DVR to Tencent Cloud Storage or VoD: [CN](https://mp.weixin.qq.com/s/UXR5EBKZ-LnthwKN_rlIjg).
- [x] Support Typecho Plugin: [CN](https://github.com/ossrs/Typecho-Plugin-SrsPlayer).
- [x] Support live stream transcoding: [Blog](https://blog.ossrs.io/efficient-live-streaming-transcoding-for-reducing-bandwidth-and-saving-costs-39bd001af02d), [EN](https://ossrs.io/lts/en-us/blog/Live-Transcoding), [CN](https://ossrs.net/lts/zh-cn/blog/Live-Transcoding).
- [x] Support transcription for converting speech to text: [Blog](https://blog.ossrs.io/revolutionizing-live-streams-with-ai-transcription-creating-accessible-multilingual-subtitles-1e902ab856bd), [EN](https://ossrs.io/lts/en-us/blog/live-streams-transcription), [CN](https://ossrs.net/lts/zh-cn/blog/live-streams-transcription).
- [x] Support AI assistant for live room: [Blog](https://blog.ossrs.io/transform-your-browser-into-a-personal-voice-driven-gpt-ai-assistant-with-srs-stack-13e28adf1e18), [EN](https://ossrs.io/lts/en-us/blog/browser-voice-driven-gpt), [CN](https://ossrs.net/lts/zh-cn/blog/live-streams-transcription)
- [x] Support video dubbing for multiple languages: [Blog](https://blog.ossrs.io/expand-your-global-reach-with-srs-stack-effortless-video-translation-and-dubbing-solutions-544e1db671c2), [EN](https://ossrs.io/lts/en-us/blog/browser-voice-driven-gpt), [CN](https://ossrs.net/lts/zh-cn/blog/live-streams-transcription)
- [x] Support OCR for video stream: [Blog](https://blog.ossrs.io/leveraging-openai-for-ocr-and-object-recognition-in-video-streams-using-oryx-e4d575d0ca1f), [EN](https://ossrs.io/lts/en-us/blog/ocr-video-streams), [CN](https://ossrs.net/lts/zh-cn/blog/ocr-video-streams)

Other more use scenarios is on the way, please read [this post](https://github.com/ossrs/srs/issues/2856#lighthouse).

## Features

The features that we're developing:

- [x] A mgmt support authentication and automatic updates.
- [x] Run SRS in docker, query status by docker and SRS API.
- [x] Support publish by RTMP/WebRTC, play by RTMP/HTTP-FLV/HLS/WebRTC.
- [x] SRS container use docker logs `json-file` and rotate for logging.
- [x] Support high-resolution and realtime(200~500ms) live streaming by SRT.
- [x] Run SRS hooks in docker, to callback by SRS server.
- [x] Support publish by SRT, play by RTMP/HTTP-FLV/HLS/WebRTC/SRT.
- [x] Change redis port and use randomly password.
- [x] Support integrity with tencent cloud VoD.
- [x] Support restreaming to multiple platforms.
- [x] Support WordPress Plugin: SrsPlayer.
- [x] Support aaPanel to install on any linux.
- [x] Support DVR to local disk.
- [x] Support upgrade to latest version manually.
- [x] Support HTTPS by let's encrypt with LEGO.
- [x] Support virtual live streaming, covert file or other resource to live.
- [x] Support self-host HLS CDN, to serve 10k+ viewers.
- [x] Support Typecho Plugin: Typecho-Plugin-SrsPlayer.
- [x] Support DVR to TencentCloud storage.
- [x] Support pull RTSP from IP Camera and stream to YouTube/Twitch/Facebook.
- [x] Support live streaming transcoding by FFmpeg, see [#2869](https://github.com/ossrs/srs/issues/2869).
- [x] Support transcription for converting speech to text.
- [x] Support AI assistant for live room.
- [x] Support video dubbing for multiple languages.
- [ ] Support limit the streaming duration to limit the fee.
- [ ] Support GB28181 by SRS 5.0 container.
- [ ] Support WebRTC face to face chat, see [#2857](https://github.com/ossrs/srs/issues/2857).
- [ ] Support WebRTC video chat room, see [#2924](https://github.com/ossrs/srs/issues/2924).
- [ ] Support a set of tools for developer, see [#2891](https://github.com/ossrs/srs/issues/2891).
- [ ] Collect logs of mgmt and containers together.
- [ ] Stop, restart and upgrade containers.
- [ ] Support logrotate to manage the logs.
- [ ] Enhance prometheus API with authentication.
- [ ] Integrate with prometheus and node-exporter.

## License

Oryx is an open-source project, licensed under the [MIT](https://spdx.org/licenses/MIT.html) license.

We also used the following open-source projects:

* [FFmpeg](https://ffmpeg.org/): A complete, cross-platform solution to record, convert and stream audio and video.
* [Redis](https://redis.io/): Redis is an in-memory data store used by millions of developers as a cache, vector database, document database, streaming engine, and message broker.
* [youtube-dl](https://github.com/ytdl-org/youtube-dl): Command-line program to download videos from YouTube.com and other video sites.

Other frameworks we used:

* [Reactjs](https://react.dev/): The library for web and native user interfaces.
* [Go](https://golang.org/): Build simple, secure, scalable systems with Go.

## Developer

For development, please refer to the [Environments](DEVELOPER.md) about the API and architecture.

2022.11
