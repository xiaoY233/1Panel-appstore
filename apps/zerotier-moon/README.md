# ZeroTier - 全球区域网络

*本文档面向软件开发者读者。有关使用 ZeroTier 的信息，请参阅： [官方网站](https://www.zerotier.com) 、 [文档站点](https://docs.zerotier.com) 和 [讨论论坛](https://discuss.zerotier.com) 。*

ZeroTier 是一个智能可编程以太网交换机，适用于地球。它允许所有网络设备、虚拟机、容器和应用程序像它们位于同一个物理数据中心或云区域一样进行通信。

这通过结合一个加密地址和安全的对等网络（称为 VL1）以及一个类似于 VXLAN 的以太网仿真层（称为 VL2）来实现。我们的 VL2 以太网虚拟化层包括精细粒度的访问控制规则等先进的企业级 SDN 功能，用于网络微分割和安全监控。

所有 ZeroTier 流量均使用仅您控制的秘密密钥进行端到端加密。大多数流量通过对等方直接传输，尽管我们为无法建立对等连接的用户提供免费（但速度较慢）的中继服务。

ZeroTier 的目标和设计原则受到诸如原始的 [Google BeyondCorp](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/43231.pdf) 论文和 [Jericho Forum](https://en.wikipedia.org/wiki/Jericho_Forum) 及其“去边界化”概念等众多因素的启发。

请访问 [ZeroTier 的网站](https://www.zerotier.com/)获取更多信息和[预构建的二进制包](https://www.zerotier.com/download/) 。Android 和 iOS 的应用程序可在 Google Play 和 Apple 应用商店免费下载。

ZeroTier 采用 [BSL 版本 1.1](https://mariadb.com/bsl11/) 许可。详情请参阅 [LICENSE.txt](https://github.com/zerotier/ZeroTierOne/blob/dev/LICENSE.txt) 和 [ZeroTier 的定价页面](https://www.zerotier.com/pricing) 。ZeroTier 在企业内部和学术机构中免费使用，适用于非商业用途。基于 ZeroTier 构建封闭源代码的应用程序和设备，或提供 ZeroTier 网络控制器和网络管理作为 SaaS 服务的某些商业用途需要商业许可。

ZeroTier 中还包含少量第三方代码，并不受我们的 BSL 许可协议约束。请参见 [AUTHORS.md](https://github.com/zerotier/ZeroTierOne/blob/dev/AUTHORS.md) 以获取第三方代码列表、它们的位置以及适用的许可协议。ZeroTier 中的所有第三方代码均采用宽松许可（MIT、BSD、Apache、公共领域等）。

### 快速入门

ZeroTier 世界中的所有内容均由两种类型的标识符控制：40 位/10 位的 *ZeroTier 地址*和 64 位/16 位的*网络 ID*。这些标识符通过长度很容易区分。ZeroTier 地址标识一个节点或“设备”（笔记本电脑、手机、服务器、虚拟机、应用程序等），而网络 ID 标识一个虚拟以太网网络，设备可以加入该网络。

ZeroTier 地址可以被视为一个巨大的全球企业以太网智能交换机上的端口号，该交换机支持 VLAN。网络 ID 是这些端口可以分配的 VLAN ID。一个端口可以分配给多个 VLAN。

一个 ZeroTier 地址看起来像 \``8056c2e21c`\`，而一个网络 ID 看起来像 \``8056c2e21c000001`\`。网络 ID 由该网络主控制器的 ZeroTier 地址和一个任意的 24 位 ID 组成，该 ID 用于标识此控制器上的网络。网络控制器大致类似于 SDN 协议（如 OpenFlow）中的 SDN 控制器，尽管像 VXLAN 与 VL2 之间的类比一样，这不应被解读为意味着协议或设计相同。你可以使用我们方便且经济实惠的基于云的服务控制器访问 [my.zerotier.com](https://my.zerotier.com/)，或者如果你愿意处理 JSON 配置文件或编写脚本，也可以自己运行控制器。

### 项目布局

基础路径包含 ZeroTier One 服务的主要入口点（`one.cpp`）、自我测试代码、Makefile 等。

*   `artwork/`：图标、徽标等。
*   `attic/`: 旧的代码和实验性代码，我们希望保留这些代码以便参考。
*   `controller/`: 参考网络控制器的实现，这是在桌面和服务器构建目标中默认构建和包含的。
*   `debian/`: 用于在 Linux 上构建 Debian 包的文件。
*   `doc/`: 手册页和其他文档。
*   `ext/`: 第三方库，我们在某些平台（Mac 和 Windows）上提供的方便使用的二进制文件，以及安装支持文件。
*   `include/`: ZeroTier 核心的头文件。
*   `java/`: 用于我们的 Android 移动应用的 JNI 封装。整个 Android 应用目前不是开源的，但未来可能会开源。
*   `node/`: ZeroTier 虚拟以太网交换机的核心代码，设计为完全独立于其他代码，并能够作为独立的跨平台库进行构建。开发人员注意：不要在这里使用 C++11 特性，因为我们希望这个代码能够在缺乏 C++11 支持的旧嵌入式平台上进行构建。C++11 可以在其他地方使用。
*   `osdep/`: 支持和集成到操作系统中的代码，包括仅针对某些目标构建的平台特定代码。
*   `rule-compiler/`: 用于定义网络级别规则的 JavaScript 规则语言编译器。
*   `service/`: ZeroTier One 服务，该服务封装了 ZeroTier 核心，并为桌面、笔记本、服务器、虚拟机和容器提供类似虚拟网络的连接性。
*   `windows/`: Visual Studio 项目文件、Windows 服务代码以及 Windows 任务栏应用程序 UI。
*   `zeroidc/`: ZeroTier 服务用于登录 SSO 启用网络的 OIDC 实现。（这部分是用 Rust 编写的，未来这个仓库中还会出现更多的 Rust 代码。）

### 构建和平台注意事项

在 Mac 和 Linux 上构建只需输入 `make`。在 FreeBSD 和 OpenBSD 上需要 `gmake`（GNU make），可以从包或 ports 安装。对于 Windows，在 `windows/` 目录中有 Visual Studio 解决方案。

*   **Mac**
    *   macOS 10.13 或更新版本所需的 Xcode 命令行工具是必需的。
    *   x86\_64 和 ARM64 目标所需的 Rust *如果构建时启用了 SSO*。
*   **Linux**
    *   所需的最小编译器版本是 GCC/G++ 4.9.3 或 CLANG/CLANG++ 3.4.2。（在 CentOS 7 上安装 `clang`，因为 G++ 过于陈旧。）
    *   Linux makefile 会自动检测并优先使用 clang/clang++，因为在大多数情况下它会产生更小且稍快的二进制文件。您可以通过在 make 命令行中提供 CC 和 CXX 变量来覆盖此设置。
    *   Rust 用于 x86\_64 和 ARM64 目标 *如果构建时启用了 SSO*。
*   **Windows**
    *   Visual Studio 2022 在 Windows 10 或更新版本上。
    *   Rust 用于 x86\_64 和 ARM64 目标 *如果构建时启用了 SSO*。
*   **FreeBSD**
    *   GNU make 是必需的。输入 `gmake` 来编译。
    *   `binutils` 是必需的。输入 `pkg install binutils` 来安装。
    *   x86\_64 和 ARM64 目标需要 Rust， *如果构建时启用了 SSO*。
*   **OpenBSD**
    *   OpenBSD 上最多只能有四个网络成员身份，因为只有四个 tap 设备（/dev/tap0 至 /dev/tap3）。
    *   需要 GNU make。输入 gmake 来编译。
    *   x86\_64 和 ARM64 目标需要 Rust，如果构建时启用了 SSO。

输入 make selftest 将构建一个 zerotier-selftest 可执行文件，该文件对各种内部组件进行单元测试，并报告构建环境的几个方面。在新的平台或架构上尝试这个是个好主意。

### 运行

运行 \`zerotier-one\` 并使用 \`-h\` 选项可以显示帮助信息。

在 Linux 和 BSD 上，如果你是从源代码编译的，可以使用以下命令启动服务：

```
sudo ./zerotier-one -d
```

在大多数发行版、macOS 和 Windows 上，安装程序会启动服务并设置为开机自启动。

系统会自动为你创建一个主文件夹。

该服务通过 JSON API 控制， 默认情况下 API 可以在 127.0.0.1 的 9993 端口访问。我们提供了一个 *zerotier-cli* 命令行工具，用于执行标准操作（如加入和退出网络）的 API 调用。主文件夹中的 *authtoken.secret* 文件包含了访问此 API 的密钥。请参阅 [service/README.md](service/README.md) 获取 API 文档。

这是每个操作系统中默认的主文件夹位置：

*   **Linux**: `/var/lib/zerotier-one`
*   FreeBSD / OpenBSD: /var/db/zerotier-one
*   Mac: `/Library/Application Support/ZeroTier/One`
*   Windows: \\ProgramData\\ZeroTier\\One (That's the default. The base 'shared app data' folder might be different if Windows is installed with a non-standard drive letter assignment or layout.)

### 基本排查问题

对于大多数用户来说，它就是这么工作的。

如果你正在运行本地系统防火墙，我们建议添加允许 zerotier 的规则。如果你在 Windows 上安装了二进制文件，这应该会自动完成。其他平台可能需要根据你的配置手动编辑本地防火墙规则。

更多信息请参见 [文档站点](https://docs.zerotier.com/zerotier/troubleshooting) 。

Mac 的防火墙可以在系统偏好设置中的“安全性”下找到。Linux 有不同的防火墙配置系统和工具。

在 CentOS 中检查 `/etc/sysconfig/iptables` 以查看 IPTables 规则。对于其他发行版，请参阅相应发行版的文档。如果你正在运行 Little Snitch（Mac）或 McAfee Firewall Enterprise（Windows）等商业第三方防火墙应用程序，还需要检查其 UI 或文档。某些企业环境可能有集中管理的防火墙软件，因此你可能还需要联系 IT 部门。

ZeroTier One 对等节点会自动互相定位并在本地有线局域网中直接通信 *如果 UDP 端口 9993 入站是开放的* 。如果该端口被过滤，它们将无法看到彼此的局域网公告包。如果你在同一物理网络中的设备之间遇到性能不佳的问题，请检查其防火墙设置。如果没有局域网自动定位，对等节点必须尝试“回环”NAT 穿越，这有时会失败，并且无论如何，每包都需要经过你的外部路由器两次。

某些类型防火墙和“对称”NAT 设备后的用户可能无法直接连接到外部节点。ZeroTier 支持有限的端口预测，并会尝试穿越对称 NAT，但这并不总是有效。如果 P2P 连接失败，UDP 数据包将通过我们的中继服务器进行转发，导致性能变慢。一些 NAT 路由器具有可配置的 NAT 模式，将其设置为“全锥型”可以解决这个问题。这样，您还可能在 VoIP 电话、Skype、BitTorrent、WebRTC、某些游戏等方面看到神奇的性能提升，因为所有这些都使用与我们相似的 NAT 穿越技术。

如果您与互联网之间的防火墙阻止了 ZeroTier 的 UDP 流量，您将退回到作为最后手段的通过端口 443（https 冒充）的 TCP 隧道连接到根服务器。这几乎可以在任何地方工作，但与 UDP 或直接 P2P 连接相比，速度非常慢。

您可以在我们的[知识库](https://zerotier.atlassian.net/wiki/spaces/SD/overview)中找到更多帮助。

### Prometheus Metrics

Prometheus 指标在 `/metrics`API 端点处可用。该端点通过存储在 `metricstoken.secret` 中的 API 密钥进行保护，以防止意外信息泄露。从这些指标中可以获取到的信息包括你的实例正在与其通信的网络和节点。

访问控制通过 ZeroTier 控制接口本身和 `metricstoken.secret` 实现。可以将其作为 bearer auth 令牌发送，通过 `X-ZT1-Auth`HTTP 头字段，或者附加到 URL 中作为 `?auth=<token>`。你可以通过 `cURL` 查看当前的指标，使用以下命令：

```
// Linux
curl -H "X-ZT1-Auth: $(sudo cat /var/lib/zerotier-one/metricstoken.secret)" http://localhost:9993/metrics

// macOS
curl -H "X-XT1-Auth: $(sudo cat /Library/Application\ Support/ZeroTier/One/metricstoken.secret)" http://localhost:9993/metrics

// Windows PowerShell (Admin)
Invoke-RestMethod -Headers @{'X-ZT1-Auth' = "$(Get-Content C:\ProgramData\ZeroTier\One\metricstoken.secret)"; } -Uri http://localhost:9993/metrics
```

要在 ZeroTier 运行的机器上配置 Prometheus 的抓取作业，将以下内容添加到你的 Prometheus`scrape_config` 中：

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

如果这两种方法都不合适，可能可以通过或其他工具来分发指标。注意：我们尚未在内部测试过这一点，但应该在正确配置的情况下工作。

Metrics 也会存储在 ZeroTier 工作目录的磁盘上：

// Linux /var/lib/zerotier-one/metrics.prom

// macOS /Library/Application Support/ZeroTier/One/metrics.prom

// Windows C:\\ProgramData\\ZeroTier\\One\\metrics.prom

#### 可用指标

| 指标名称 | 标签 | 指标类型 | 描述 |
| --- | --- | --- | --- |
| zt\_packet | packet\_type, direction | Counter | ZeroTier 包类型计数 |
| ZeroTier 包错误 | 错误类型, 方向 | 计数器 | ZeroTier 包错误 |
| zt\_data | 协议, 方向 | Counter | ZeroTier 已传输或接收的字节数 |
| zt\_num\_networks |  | 计数器 | 此实例加入的网络数量 |
| zt\_network\_multicast\_groups\_subscribed | 网络 ID | Gauge | 网络订阅的组播组数量 |
| 组播网络包 | 网络 ID, 方向 | Counter | 每网络的入站/出站数据包数量 |
| zt\_peer\_latency | node\_id | Histogram | 对等延迟 (ms) |
| zt\_peer\_path\_count | node\_id, 状态 | Gauge | 到对等体的路径数量 |
| zt\_peer\_packets | node\_id, direction | Counter | 来自/发送给对等节点的数据包数量 |
| zt\_peer\_packet\_errors | node\_id | Counter | 来自对等节点的入站数据包错误数量 |

如果您希望跟踪其他指标，请在 Issue 中告诉我们或向我们提交 Pull Request！