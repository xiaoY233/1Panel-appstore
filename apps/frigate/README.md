# Frigate

Frigate 是一个为 [Home Assistant](https://www.home-assistant.io) 设计的完整本地 NVR，具备 AI 物体检测功能。它使用 OpenCV 和 TensorFlow 实现 IP 摄像头的实时物体检测。


- 与 Home Assistant 的紧密集成，通过 [自定义组件](https://github.com/blakeblackshear/frigate-hass-integration) 实现
- 旨在通过仅在必要时和适当位置寻找物体来最小化资源使用并最大化性能
- 大量利用多进程，强调实时性而非处理每一帧
- 使用非常低开销的运动检测来确定何时进行物体检测
- TensorFlow 的物体检测在单独的进程中运行，以实现最大 FPS
- 通过 MQTT 进行通信，方便与其他系统集成
- 基于检测到的物体记录视频并设置保留策略
- 24/7 录制
- 通过 RTSP 进行重流，以减少对摄像头的连接数量
- 支持 WebRTC 和 MSE，实现低延迟实时视图

## 文档

查看文档：[https://docs.frigate.video](https://docs.frigate.video)

## 使用说明

用户名与密码通过查看容器日志获取