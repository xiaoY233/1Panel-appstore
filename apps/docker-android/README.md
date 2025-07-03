# Docker-Android

Docker-Android 是一个用于 Android 相关一切事务的 Docker 镜像。它可以用于应用程序开发和测试（包括原生应用、网页应用和混合应用）。


## 使用说明

要验证您的系统是否支持 KVM，请运行以下命令：

```
sudo apt install cpu-checker
sudo kvm-ok
```

**容器镜像与模拟的设备型号可从以下选择 (后续官方可能有修改，以官方文档为准)**

Docker 镜像列表
---------------------
|Android   |API   |最新版本镜像   |指定版本镜像|
|:---|:---|:---|:---|
|9.0|28|budtmo/docker-android:emulator_9.0|budtmo/docker-android:emulator_9.0_<release_version>|
|10.0|29|budtmo/docker-android:emulator_10.0|budtmo/docker-android:emulator_10.0_<release_version>|
|11.0|30|budtmo/docker-android:emulator_11.0|budtmo/docker-android:emulator_11.0_<release_version>|
|12.0|32|budtmo/docker-android:emulator_12.0|budtmo/docker-android:emulator_12.0_<release_version>|
|13.0|33|budtmo/docker-android:emulator_13.0|budtmo/docker-android:emulator_13.0_<release_version>|
|14.0|34|budtmo/docker-android:emulator_14.0|budtmo/docker-android:emulator_14.0_<release_version>|
|-|-|budtmo/docker-android:genymotion|budtmo/docker-android:genymotion_<release_version>|

设备列表
---------------

|类型   | 设备名称|
|-----  | -----|
|手机  | Samsung Galaxy S10|
|手机  | Samsung Galaxy S9|
|手机  | Samsung Galaxy S8|
|手机  | Samsung Galaxy S7 Edge|
|手机  | Samsung Galaxy S7|
|手机  | Samsung Galaxy S6|
|手机  | Nexus 4|
|手机  | Nexus 5|
|手机  | Nexus One|
|手机  | Nexus S|
|平板 | Nexus 7|