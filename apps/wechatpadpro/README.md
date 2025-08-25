# WeChatPadPro

基於 WeChat Pad 協議的高級管理工具v861

![WeChatPadPro](https://file.lifebus.top/imgs/wechatpadpro_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

### 🌟 主要特點

#### 🛡️ 安全可靠

採用最新的 WeChat Pad 協議，確保帳號安全

#### 🔄 自動化處理

支援訊息自動回覆、群管理等自動化操作

#### 🎯 精準控制

提供細粒度的功能控制和配置選項

#### 🔌 擴展性強

支援外掛系統，可自定義擴展功能

#### 📊 資料同步

支援多裝置資料同步，確保資訊統一

### 🎯 適用場景

#### 👥 個人用戶

訊息管理、自動回覆、防撤回等

#### 🏢 企業用戶

客戶管理、批量操作、資料分析等

#### 🤖 開發者

二次開發、功能擴展、自動化整合等

## 功能特性

WeChatPadPro 是基於 WeChat Pad 協議的高級 WeChat 管理工具，支援以下功能：

> 🔐 微信登录验证码API功能 ⭐ 重点功能

### 多种登录方式支持

✅ 二维码登录 - 支持获取登录二维码，绕过验证码流程
✅ 验证码登录 - 自动处理验证码提交，无需手动获取ticket
✅ 短信登录 - 支持短信验证码登录方式
✅ 设备登录 - 支持A16数据登录和设备ID登录

### 自动验证码处理

✅ 自动获取ticket - 系统自动从Redis或状态缓存中获取ticket
✅ 自动生成data62 - 如果data62为空，系统会自动根据设备信息生成
✅ 多重数据源 - 从Redis、状态缓存、用户信息、连接管理器等多个来源获取ticket
✅ 智能参数验证 - 自动检查必要参数，提供友好错误提示

### 实时状态检测

✅ 登录状态监控 - 实时检测扫码状态和登录进度
✅ 验证码状态跟踪 - 自动识别是否需要验证码
✅ 连接健康检查 - 实时监控连接状态，自动检测连接健康度
✅ 心跳监控 - 增加心跳时间记录，超过10秒无心跳认为连接不健康

### RabbitMQ消息队列支持

✅ 智能重连机制 - 只在连接确实断开时才重连，避免频繁重连
✅ 连接健康检查 - 实时监控连接状态，自动检测连接健康度
✅ 并发安全 - 使用互斥锁确保重连过程的线程安全
✅ 消息持久化 - 确保消息在服务器重启后不丢失

### 多账号管理

✅ 多账号并行 - 支持同时管理多个微信账号
✅ 账号隔离 - 每个账号独立运行，互不影响
✅ 统一管理 - 通过统一接口管理所有账号状态

### 自动Token刷新

✅ 自动刷新 - 系统自动检测并刷新过期的Token
✅ 无缝切换 - Token刷新过程中不影响正常使用
✅ 状态同步 - 刷新后自动同步所有相关状态

### 🔄 API接口列表

#### 登录相关接口

> 获取微信登录二维码（绕过验证码）
>
> POST `/api/login/qr/newx`

> 自动处理验证码提交
>
> POST `/api/login/AutoVerificationcode`

> 检测扫码登录状态
>
> GET `/api/login/CheckLoginStatus`

> 自动处理验证码（推荐）
>
> POST `/api/login/verify/auto`

> 手动处理验证码
>
> POST `/api/login/verify/manual`

#### 状态检测接口

> 获取在线状态
>
> GET `/api/login/GetLoginStatus`

> 初始化状态
>
> GET `/api/login/GetInItStatus`

> 检测微信登录环境
>
> GET `/api/login/CheckCanSetAlias`

#### 设备管理接口

> 设备登录
>
> POST `/api/login/DeviceLogin`

> A16数据登录
>
> POST `/api/login/A16Login`

> 短信登录
>
> POST `/api/login/SmsLogin`

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
