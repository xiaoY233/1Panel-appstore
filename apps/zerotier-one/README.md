# 使用说明

例子：容器管理界面连接容器终端，执行命令加入网络

```
zerotier-cli join [网络ID]
```

# 原始相关

# ZeroTier - 全球区域网络

*本文件面向软件开发人员。有关使用 ZeroTier 的信息，请参见： [网站](https://www.zerotier.com) 、 [文档站点](https://docs.zerotier.com)和[讨论论坛](https://discuss.zerotier.com) 。*

ZeroTier 是一款智能可编程以太网交换机，适用于地球。它允许所有网络设备、虚拟机、容器和应用程序仿佛都位于同一个物理数据中心或云区域中进行通信。

这通过结合一种加密地址和安全的点对点网络（称为 VL1）以及一种类似于 VXLAN 的以太网仿真层（称为 VL2）来实现。我们的 VL2 以太网虚拟化层包括精细粒度的访问控制规则等先进的企业级 SDN 功能，用于网络微分割和安全监控。

所有 ZeroTier 流量均使用您控制的秘密密钥进行端到端加密。大多数流量以点对点方式流动，尽管我们为无法建立点对点连接的用户提供免费（但较慢）的中继服务。

ZeroTier 的目标和设计原则受到诸如原始的 [Google BeyondCorp](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/43231.pdf) 论文和 [Jericho Forum](https://en.wikipedia.org/wiki/Jericho_Forum) 及其“去边界化”概念的影响。

访问 [ZeroTier 的网站](https://www.zerotier.com/)获取更多信息和[预构建的二进制包](https://www.zerotier.com/download/) 。Android 和 iOS 的应用程序可以在 Google Play 和 Apple 应用商店免费下载。

ZeroTier 采用 [BSL 版本 1.1](https://mariadb.com/bsl11/) 许可。详情请参见 [LICENSE.txt](https://github.com/zerotier/ZeroTierOne/blob/dev/LICENSE.txt) 和 [ZeroTier 的定价页面](https://www.zerotier.com/pricing) 。ZeroTier 在企业内部和学术机构中免费使用，以及用于非商业用途。基于 ZeroTier 构建闭源应用程序和设备，或提供 ZeroTier 网络控制器和网络管理作为 SaaS 服务的某些商业用途需要商业许可。

ZeroTier 中还包含少量第三方代码，这些代码不受我们的 BSL 许可约束。请参见 [AUTHORS.md](https://github.com/zerotier/ZeroTierOne/blob/dev/AUTHORS.md)，了解第三方代码的列表、它们的位置以及适用的许可协议。ZeroTier 中的所有第三方代码均采用宽松许可（MIT、BSD、Apache、公共领域等）。

### 快速入门

在 ZeroTier 的世界中，一切均由两种类型的标识符控制：40 位/10 位的 *ZeroTier 地址*和 64 位/16 位的*网络 ID*。这些标识符通过长度很容易区分。ZeroTier 地址标识一个节点或“设备”（如笔记本电脑、手机、服务器、虚拟机、应用程序等），而网络 ID 标识一个可以由设备加入的虚拟以太网网络。

ZeroTier 地址可以被视为一个巨大的全球企业级以太网智能交换机上的端口号，该交换机支持 VLAN。网络 ID 是这些端口可以分配的 VLAN ID。一个端口可以分配给一个以上的 VLAN。

一个 ZeroTier 地址看起来像 \``8056c2e21c`\`，而一个网络 ID 看起来像 \``8056c2e21c000001`\`。网络 ID 由该网络主控制器的 ZeroTier 地址和一个任意的 24 位 ID 组成，该 ID 用于标识该控制器上的网络。网络控制器大致类似于 SDN 协议（如 OpenFlow）中的 SDN 控制器，尽管像 VXLAN 与 VL2 之间的类比一样，这不应被解读为协议或设计相同。你可以使用我们方便且经济实惠的基于云的服务（SaaS）托管控制器，访问地址为 [my.zerotier.com](https://my.zerotier.com/)，或者 [自行运行控制器](controller/) ，如果你愿意处理 JSON 配置文件或编写脚本来实现。

### 项目布局

基础路径包含 ZeroTier One 服务的主要入口点（`one.cpp`）、自我测试代码、Makefile 等。

*   `artwork/`：图标、徽标等。
*   `attic/`：旧的文件和实验代码，我们希望保留这些文件以供参考。
*   `controller/`: 默认的网络控制器实现，会在桌面版和服务器版的构建目标中构建并包含进去。
*   `debian/`: 用于在 Linux 上构建 Debian 软件包的文件。
*   `doc/`: 手册页和其他文档。
*   `ext/`: 第三方库，方便在某些平台（Mac 和 Windows）上安装的二进制文件，以及安装支持文件。
*   `include/`: ZeroTier 核心的包含文件。
*   `java/`: 用于与我们的 Android 移动应用配合的 JNI 封装器。（整个 Android 应用目前不是开源的，但将来可能会开源。）
*   `node/`: ZeroTier 虚拟以太网交换机的核心代码，设计为完全独立于其他代码，并能够构建为独立于操作系统的库。开发人员注意：不要在此使用 C++11 特性，因为我们希望此代码能够在缺乏 C++11 支持的旧嵌入式平台上构建。C++11 可以在其他地方使用。
*   `osdep/`: 支持和集成操作系统的代码，包括仅针对某些目标构建的平台特定代码。
*   `rule-compiler/`: JavaScript 规则语言编译器，用于定义网络级别规则。
*   `service/`: ZeroTier One 服务，封装了 ZeroTier 核心，并为桌面、笔记本、服务器、虚拟机和容器提供了类似 VPN 的虚拟网络连接。
*   `windows/`: Visual Studio 解决方案文件、Windows 服务代码以及 Windows 任务栏应用程序 UI。
*   `zeroidc/`: ZeroTier 服务用于登录 SSO 网络的 OIDC 实现。（这部分是用 Rust 编写的，未来该仓库中还将出现更多的 Rust 代码。）

### 构建和平台注意事项

要在 Mac 和 Linux 上构建，请输入 \``make`\`。在 FreeBSD 和 OpenBSD 上需要 \``gmake`\`（GNU make），可以从包或端口安装。对于 Windows，可以在 \``windows/`\` 目录中找到 Visual Studio 解决方案。

*   **Mac**
    *   macOS 10.13 或更新版本的 Xcode 命令行工具是必需的。
    *   如果构建时启用了 SSO，则需要针对 x86\_64 和 ARM64 目标的 Rust。
*   **Linux**
    *   所需的最小编译器版本为 GCC/G++ 4.9.3 或 CLANG/CLANG++ 3.4.2。（在 CentOS 7 上安装 `clang`，因为 G++ 过于陈旧。）
    *   Linux makefile 会自动检测并优先使用 clang/clang++，因为大多数情况下它生成的二进制文件更小且略快。您可以通过在 make 命令行中提供 CC 和 CXX 变量来覆盖此设置。
    *   x86\_64 和 ARM64 目标下的 Rust *如果构建时启用了 SSO*。
*   **Windows**
    *   Visual Studio 2022 在 Windows 10 或更新版本上。
    *   x86\_64 和 ARM64 目标下的 Rust *如果构建时启用了 SSO*。
*   **FreeBSD**
    *   GNU make 是必需的。输入 `gmake` 来构建。
    *   `binutils` 是必需的。输入 `pkg install binutils` 来安装。
    *   x86\_64 和 ARM64 目标需要 Rust *如果构建时启用了 SSO*。
*   **OpenBSD**
    *   在 OpenBSD 中，最多只能有四个网络成员身份，因为只有四个 tap 设备（`/dev/tap0` 至 `/dev/tap3`）。
    *   需要 GNU make。输入 `gmake` 来构建。
    *   对于 x86\_64 和 ARM64 目标，如果构建时启用了 SSO，则需要 Rust。

输入 `make selftest` 将构建一个名为 *zerotier-selftest* 的二进制文件，该文件对各种内部进行单元测试，并报告构建环境的几个方面。在新的平台或架构上尝试这个命令是个好主意。

### 运行

运行 \`*zerotier-one*\` 并使用 `-h` 选项可以显示帮助信息。

在 Linux 和 BSD 上，如果你是从源代码编译的，可以使用以下命令启动服务：

```
sudo ./zerotier-one -d
```

在大多数发行版、macOS 和 Windows 上，安装程序会启动服务，并设置为开机自启动。

你的系统会自动创建一个家目录。

服务通过 JSON API 进行控制，默认情况下 API 可在 127.0.0.1 端口 9993 访问。我们提供了一个 *zerotier-cli* 命令行工具，用于调用加入和退出网络等标准 API 调用。*authtoken.secret* 文件位于主文件夹中，包含访问此 API 的密钥。请参阅 [service/README.md](service/README.md) 获取 API 文档。

这是每个操作系统中默认的主文件夹位置：

*   **Linux**: `/var/lib/zerotier-one`
*   **FreeBSD** / **OpenBSD**: `/var/db/zerotier-one`
*   Mac: `/Library/Application Support/ZeroTier/One`
*   **Windows**: `\ProgramData\ZeroTier\One`（这是默认位置。如果 Windows 安装时使用了非标准的驱动器字母分配或布局，基础的“共享应用数据”文件夹可能会不同。）

### 基本排查问题

对于大多数用户来说，它就是这么工作的。

如果你正在运行本地系统防火墙，我们建议添加允许 zerotier 的规则。如果你在 Windows 上安装了二进制文件，这应该会自动完成。其他平台可能需要根据你的配置手动编辑本地防火墙规则。

更多信息请参见 [文档站点](https://docs.zerotier.com/zerotier/troubleshooting) 。

Mac 的防火墙可以在系统偏好设置中的“安全性”下找到。Linux 有不同的防火墙配置系统和工具。

在 CentOS 中检查 `/etc/sysconfig/iptables` 以查看 IPTables 规则。对于其他发行版，请参阅相应发行版的文档。如果你正在运行 Little Snitch（Mac）或 McAfee Firewall Enterprise（Windows）等商业第三方防火墙应用程序，还需要检查其 UI 或文档。某些企业环境可能使用集中管理的防火墙软件，因此你可能还需要联系 IT 部门。

ZeroTier One 对等节点会自动相互定位并在本地有线局域网中直接通信 *如果 UDP 端口 9993 入站是开放的* 。如果该端口被过滤，它们将无法看到彼此的局域网公告包。如果你在同一物理网络中的设备之间遇到性能不佳的问题，请检查它们的防火墙设置。如果没有局域网自动定位，对等节点必须尝试“回环”NAT 穿越，这有时会失败，并且无论如何，每包都需要经过你的外部路由器两次。

某些类型的防火墙和“对称”NAT 设备背后的用户可能无法直接连接到外部节点。ZeroTier 支持有限的端口预测功能，并会尝试穿越对称 NAT，但这并不总是有效。如果 P2P 连接失败，UDP 数据包将通过我们的中继服务器进行转发，导致性能变慢。一些 NAT 路由器具有可配置的 NAT 模式，将其设置为“全锥型”可以解决这个问题。这样做后，您还可能在 VoIP 电话、Skype、BitTorrent、WebRTC、某些游戏等方面看到神奇的性能提升，因为所有这些应用都使用了与我们类似的 NAT 穿越技术。

如果您与互联网之间的防火墙阻止了 ZeroTier 的 UDP 流量，系统将退回到最后的 TCP 隧道，通过端口 443（https 冒充）连接到根服务器。这种方法几乎可以在任何地方工作，但与 UDP 或直接 P2P 连接相比，速度非常慢。

您可以在我们的[知识库](https://zerotier.atlassian.net/wiki/spaces/SD/overview)中获得额外帮助。

### Prometheus Metrics

Prometheus 指标可在 `/metrics` API 端点获取。该端点通过存储在 `metricstoken.secret` 中的 API 密钥进行保护，以防止意外信息泄露。从这些指标中可以获取到的信息包括你的实例正在与其通信的已连接网络和节点。

访问控制通过 ZeroTier 控制接口本身和 `metricstoken.secret` 实现。可以将此密钥作为 bearer 认证令牌发送，通过 `X-ZT1-Auth` HTTP 头部字段，或者附加到 URL 中作为 `?auth=<token>`。你可以通过 `cURL` 命令查看当前的指标：

```
// Linux
curl -H "X-ZT1-Auth: $(sudo cat /var/lib/zerotier-one/metricstoken.secret)" http://localhost:9993/metrics

// macOS
curl -H "X-XT1-Auth: $(sudo cat /Library/Application\ Support/ZeroTier/One/metricstoken.secret)" http://localhost:9993/metrics

// Windows PowerShell (Admin)
Invoke-RestMethod -Headers @{'X-ZT1-Auth' = "$(Get-Content C:\ProgramData\ZeroTier\One\metricstoken.secret)"; } -Uri http://localhost:9993/metrics
```

要在运行 ZeroTier 的机器上配置 Prometheus 的抓取作业，将以下内容添加到你的 Prometheus `scrape_config` 中：

```
- job_name: zerotier-one
  honor_labels: true
  scrape_interval: 15s
  metrics_path: /metrics
  static_configs:
  - targets:
    - 127.0.0.1:9993
    labels:
      group: zerotier-one
      node_id: $YOUR_10_CHARACTER_NODE_ID
  authorization:
    credentials: $YOUR_METRICS_TOKEN_SECRET
```

如果这两种方法都不合适，可能可以通过 [Prometheus Proxy](https://github.com/pambrose/prometheus-proxy) 或其他工具来分发指标。注意：我们尚未在内部测试过这一点，但应该在正确配置的情况下可以工作。

Metrics 也会存储在 ZeroTier 工作目录的磁盘上：

// Linux /var/lib/zerotier-one/metrics.prom

// macOS /Library/Application Support/ZeroTier/One/metrics.prom

// Windows C:\\ProgramData\\ZeroTier\\One\\metrics.prom

#### 可用指标

| 指标名称 | 标签 | 指标类型 | 描述 |
| --- | --- | --- | --- |
| zt\_packet | packet\_type, direction | Counter | ZeroTier 包类型计数 |
| ZeroTier 包错误 | 错误类型, 方向 | Counter | ZeroTier 包错误 |
| zt\_data | protocol, direction | Counter | ZeroTier 传输或接收的字节数 |
| zt\_num\_networks |  | Gauge | 此实例加入的网络数量 |
| zt\_network\_multicast\_groups\_subscribed | 网络 ID | Gauge | 网络订阅的组播组数量 |
| 组播网络包 | 网络 ID, 方向 | Counter | 每网络的入站/出站数据包数量 |
| zt\_peer\_latency | node\_id | Histogram | 对等延迟 (ms) |
| zt\_peer\_path\_count | node\_id, 状态 | Gauge | 到对等体的路径数量 |
| zt\_peer\_packets | 节点 ID, 方向 | Counter | 与对等节点的数据包数量 |
| zt\_peer\_packet\_errors | node\_id | Counter | 来自对等节点的入站数据包错误数量 |

如果您希望跟踪其他指标，请在 Issue 中告诉我们或向我们提交 Pull Request！