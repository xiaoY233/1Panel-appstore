# 使用说明

*   访问链接`https`：

`https://IP_OF_SERVER:6901`

*   账户密码

```
username: kasm_user
password: password
```

# 原始相关

# [Telegram Desktop](https://desktop.telegram.org) – 官方即时通讯软件

这是基于 [Telegram API](https://telegram.org) 和 [MTProto](https://core.telegram.org/mtproto) 安全协议的官方 [Telegram](https://telegram.org) 桌面客户端的完整源代码和构建说明。

[![Version](https://badge.fury.io/gh/telegramdesktop%2Ftdesktop.svg)](https://github.com/telegramdesktop/tdesktop/releases) [![Build Status](https://github.com/telegramdesktop/tdesktop/workflows/Windows./badge.svg)](https://github.com/telegramdesktop/tdesktop/actions) [![Build Status](https://github.com/telegramdesktop/tdesktop/workflows/MacOS./badge.svg)](https://github.com/telegramdesktop/tdesktop/actions) [![Build Status](https://github.com/telegramdesktop/tdesktop/workflows/Linux./badge.svg)](https://github.com/telegramdesktop/tdesktop/actions)

[![Preview of Telegram Desktop](https://github.com/telegramdesktop/tdesktop/blob/dev/docs/assets/preview.png "Preview of Telegram Desktop")](https://raw.githubusercontent.com/telegramdesktop/tdesktop/dev/docs/assets/preview.png)

源代码在 GPLv3 许可下发布，并包含 OpenSSL 例外，许可信息请参阅[此处](https://github.com/telegramdesktop/tdesktop/blob/dev/LICENSE) 。

## 支持的系统

最新版本适用于

*   [Windows 7 及以上（64 位）](https://telegram.org/dl/desktop/win64) ( [便携版](https://telegram.org/dl/desktop/win64_portable) )
*   [Windows 7 及以上（32 位）](https://telegram.org/dl/desktop/win) ( [便携版](https://telegram.org/dl/desktop/win_portable) )
*   [macOS 10.12 及以上](https://telegram.org/dl/desktop/mac)
*   [64 位静态构建的 Linux](https://telegram.org/dl/desktop/linux)
*   [Snap](https://snapcraft.io/telegram-desktop)
*   [Flatpak](https://flathub.org/apps/details/org.telegram.desktop)

## 旧系统版本

Version **2.4.4** 是最后一个支持旧系统的版本

*   [OS X 10.10 和 10.11](https://updates.tdesktop.com/tosx/tsetup-osx.2.4.4.dmg)
*   [Linux 32 位静态构建](https://updates.tdesktop.com/tlinux32/tsetup32.2.4.4.tar.xz)

Version **1.8.15** 是最后一个支持旧系统的版本

*   [Windows XP 和 Vista](https://updates.tdesktop.com/tsetup/tsetup.1.8.15.exe) ( [便携版](https://updates.tdesktop.com/tsetup/tportable.1.8.15.zip) )
*   [OS X 10.8 和 10.9](https://updates.tdesktop.com/tmac/tsetup.1.8.15.dmg)
*   [OS X 10.6 和 10.7](https://updates.tdesktop.com/tmac32/tsetup32.1.8.15.dmg)

## 第三方

*   Qt 6 ([LGPL](http://doc.qt.io/qt-6/lgpl.html)) 和 Qt 5.15 ([LGPL](http://doc.qt.io/qt-5/lgpl.html)) 略作修改
*   OpenSSL 1.1.1 和 1.0.1 ([OpenSSL 许可证](https://www.openssl.org/source/license.html) )
*   WebRTC ( [新 BSD 许可证](https://github.com/desktop-app/tg_owt/blob/master/LICENSE) )
*   zlib 1.2.11 ([zlib 许可证](http://www.zlib.net/zlib_license.html) )
*   LZMA SDK 9.20 ( [公有领域](http://www.7-zip.org/sdk.html) )
*   liblzma ( [公有领域](http://tukaani.org/xz/) )
*   Google Breakpad ( [许可证](https://chromium.googlesource.com/breakpad/breakpad/+/master/LICENSE) )
*   Google Crashpad ([Apache License 2.0](https://chromium.googlesource.com/crashpad/crashpad/+/master/LICENSE))
*   GYP ([BSD 许可证](https://github.com/bnoordhuis/gyp/blob/master/LICENSE) )
*   Ninja ([Apache 许可证 2.0](https://github.com/ninja-build/ninja/blob/master/COPYING))
*   OpenAL Soft ([LGPL](https://github.com/kcat/openal-soft/blob/master/COPYING))
*   Opus 编码器 ([BSD 许可证](http://www.opus-codec.org/license/) )
*   FFmpeg ([LGPL](https://www.ffmpeg.org/legal.html))
*   Guideline Support Library ([MIT License](https://github.com/Microsoft/GSL/blob/master/LICENSE))
*   Range-v3 ([Boost License](https://github.com/ericniebler/range-v3/blob/master/LICENSE.txt))
*   Open Sans 字体 ([Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0.html))
*   Vazir 字体（[SIL 开放字体许可证 1.1](https://github.com/rastikerdar/vazir-font/blob/master/OFL.txt)）
*   Emoji alpha 代码（[MIT 许可证](https://github.com/emojione/emojione/blob/master/extras/alpha-codes/LICENSE.md) ）
*   Catch 测试框架（[Boost 许可证](https://github.com/philsquared/Catch/blob/master/LICENSE.txt) ）
*   xxHash（[BSD 许可证](https://github.com/Cyan4973/xxHash/blob/dev/LICENSE) ）
*   QR Code 生成器 ([MIT License](https://github.com/nayuki/QR-Code-generator#license))
*   CMake ([New BSD License](https://github.com/Kitware/CMake/blob/master/Copyright.txt))
*   Hunspell ([LGPL](https://github.com/hunspell/hunspell/blob/master/COPYING.LESSER))

## 构建说明

*   Windows (32-bit)(64-bit)
*   [macOS](https://github.com/telegramdesktop/tdesktop/blob/dev/docs/building-mac.md)
*   [GNU/Linux using Docker](https://github.com/telegramdesktop/tdesktop/blob/dev/docs/building-linux.md)