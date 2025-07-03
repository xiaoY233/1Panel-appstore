# Kali Linux

Kali Linux 是一个专为渗透测试和安全审计设计的 Debian 基础 Linux 发行版。

## 功能特性

- 预装数百种渗透测试工具
- 专为安全研究人员和渗透测试人员设计
- 支持多种架构（amd64、arm64）
- 基于 LinuxServer.io 的 Docker 镜像
- 提供完整的渗透测试环境
- 支持 Web 界面访问

## 使用方法

1. 部署后通过 Web 浏览器访问容器（默认端口 3000 和 3001）
2. 容器内提供完整的 Kali Linux 环境
3. 使用预装的渗透测试工具进行安全测试
4. 支持 Docker 套接字挂载，可在容器内运行 Docker 命令

## 预装工具

Kali Linux 包含数百种渗透测试工具，包括但不限于：

- 信息收集工具（nmap、whois、dnsenum 等）
- 漏洞扫描工具（OpenVAS、Nessus 等）
- 无线网络工具（aircrack-ng、reaver 等）
- Web 应用测试工具（Burp Suite、OWASP ZAP 等）
- 密码破解工具（John the Ripper、Hashcat 等）
- 社会工程学工具（Social Engineer Toolkit 等）

## 配置说明

- **端口 3000**：HTTP Web 访问端口
- **端口 3001**：HTTPS Web 访问端口
- **时区**：Asia/Shanghai（上海时区）
- **共享内存**：1GB，确保工具正常运行
- **安全选项**：seccomp:unconfined，允许特权操作
- **Docker 套接字**：挂载宿主机 Docker 套接字，支持容器内 Docker 操作

## 安全提醒

⚠️ **重要提醒**：Kali Linux 仅用于合法的安全测试和渗透测试。请确保：

- 只在您拥有授权的系统上进行测试
- 遵守当地法律法规
- 不要用于恶意攻击或非法活动

## 相关链接

- [官方网站](https://www.kali.org/)
- [Docker Hub](https://hub.docker.com/r/linuxserver/kali-linux)
- [GitHub 项目](https://github.com/linuxserver/docker-kali-linux) 