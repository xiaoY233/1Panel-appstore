# 使用说明

需要按需配置应用目录下`data`文件夹里的`prometheus.yml`，以自定义更多功能。

# 原始相关

# [![Prometheus](https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/images/prometheus-logo.svg)](//prometheus.io)
普罗米修斯

访问 [prometheus.io](//prometheus.io) 获取完整的文档、示例和指南。

[![CI](https://github.com/prometheus/prometheus/actions/workflows/ci.yml/badge.svg)](https://github.com/prometheus/prometheus/actions/workflows/ci.yml) [![Docker Repository on Quay](https://quay.io/repository/prometheus/prometheus/status)](https://quay.io/repository/prometheus/prometheus) [![Docker Pulls](https://img.shields.io/docker/pulls/prom/prometheus.svg?maxAge=604800)](https://hub.docker.com/r/prom/prometheus/) [![Go Report Card](https://goreportcard.com/badge/github.com/prometheus/prometheus)](https://goreportcard.com/report/github.com/prometheus/prometheus) [![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/486/badge)](https://bestpractices.coreinfrastructure.org/projects/486) [![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/prometheus/prometheus) [![Fuzzing Status](https://oss-fuzz-build-logs.storage.googleapis.com/badges/prometheus.svg)](https://bugs.chromium.org/p/oss-fuzz/issues/list?sort=-opened&can=1&q=proj:prometheus)

Prometheus 是一个[云原生计算基金会](https://cncf.io/)项目，是一个系统和服务监控系统。它以给定的时间间隔从配置的目标收集指标，评估规则表达式，显示结果，并可以在观察到指定条件时触发警报。

Prometheus 与其他指标和监控系统的区别在于：

*   **多维**数据模型（由度量名称和键/值维度集定义的时间序列）
*   PromQL 是一种**强大而灵活的查询语言** ，可以利用这种维度
*   不依赖分布式存储; **单个服务器节点是自治的**
*   一种用于时间序列采集的 HTTP**Pull 模型**
*   对于批处理作业，通过中间网关支持**推送时间序列**
*   通过**服务发现**或**静态配置**发现目标
*   支持多种**图形和仪表板模式**
*   支持分层和水平**联合**

## 体系结构概述

![Architecture overview](https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/images/architecture.svg)

## 安装

安装 Prometheus 的方法有很多种。

### 预编译二进制文件

已发布版本的预编译二进制文件可在 在 [prometheus.io](https://prometheus.io) 上[*下载*部分](https://prometheus.io/download/) 。安装 Prometheus 的推荐方法是使用最新的生产版本二进制文件。有关所有详细信息，请参阅文档中的[安装](https://prometheus.io/docs/introduction/install/)章节。

### Docker 镜像

Docker 镜像可以在 [Quay.io](https://quay.io/repository/prometheus/prometheus) 或 [Docker Hub](https://hub.docker.com/r/prom/prometheus/) 上找到。

你可以启动一个 Prometheus 容器，

```bash
docker run --name prometheus -d -p 127.0.0.1:9090:9090 prom/prometheus
```

Prometheus 现在可以通过 [http：//localhost：9090/](http://localhost:9090/) 访问。

### 从源代码构建

要从源代码构建 Prometheus，您需要：

*   Go[1.17 或更高版本](https://golang.org/doc/install) 。
*   NodeJS [版本 16 或更高](https://nodejs.org/) 。
*   NPM [版本 7 或更高](https://www.npmjs.com/)版本。

首先克隆存储库：

```bash
git clone https://github.com/prometheus/prometheus.git
cd prometheus
```

您可以使用 `go` 工具构建 `prometheus` 和 `promtool` 二进制文件并将其安装到 `GOPATH` 中：

```bash
GO111MODULE=on go install github.com/prometheus/prometheus/cmd/...
prometheus --config.file=your_config.yml
```

*然而* ，当使用 `go install` 构建 Prometheus 时，Prometheus 将期望能够从 `web/ui/static` 下的本地文件系统目录读取其 web 资产， `web/ui/templates`.为了找到这些资产，您必须从克隆存储库的根目录运行 Prometheus。还要注意的是，这些目录不包括 React UI，除非它是使用 `make assets` 或 `make build` 显式构建的。

可以在这里找到上述配置文件的示例 [。](https://github.com/prometheus/prometheus/blob/main/documentation/examples/prometheus.yml)

您也可以使用 `make build 进行`构建，它将在 Web 资产中编译，以便 Prometheus 可以从任何地方运行：

```bash
make build
./prometheus --config.file=your_config.yml
```

Makefile 提供了几个目标：

*   *build*：构建 `prometheus` 和 `promtool` 二进制文件（包括在 web 资产中的构建和编译）
*   *test*：运行测试
*   *test-short*：运行短测试
*   *format*：格式化源代码
*   *vet*：检查源代码中的常见错误
*   *assets*：构建 React UI

### 服务发现插件

Prometheus 捆绑了许多服务发现插件。当从源代码构建 Prometheus 时，您可以编辑 [plugins.yml](./plugins.yml) 文件来禁用某些服务发现。该文件是一个 yaml 格式的 go 导入路径列表，将内置到 Prometheus 二进制文件中。

更改文件后，需要再次运行 `make build`。

如果您使用其他方法编译 Prometheus，`make plugins` 将相应地生成插件文件。

如果您添加树外插件（我们目前不支持），则可能需要额外的步骤来调整 `go.mod` 和 `go.sum` 文件。与往常一样，在加载第三方代码时要格外小心。

### 构建 Docker 镜像

`make docker` 目标是为我们的 CI 系统设计的。您可以使用以下命令在本地构建 Docker 镜像：

```bash
make promu
promu crossbuild -p linux/amd64
make npm_licenses
make common-docker-amd64
```

## 使用 Prometheus 作为 Go 库

### 远程写入

我们正在独立发布我们的远程写入 protobuf， [buf.build](https://buf.build/prometheus/prometheus/assets) 网站。

您可以将其用作库：

```shell
go get go.buf.build/protocolbuffers/go/prometheus/prometheus
```

这是实验性的

### 普罗米修斯代码库

为了遵守 [Go mod](https://go.dev/ref/mod#versions) 规则，Prometheus 版本号与 Go 模块版本不完全匹配。对于 Prometheus v2.y.z 版本，我们发布了等效的 v0.y.z 标签。

因此，想要使用 Prometheus v2.35.0 作为库的用户可以这样做：

```shell
go get github.com/prometheus/prometheus@v0.35.0
```

这个解决方案清楚地表明，我们可能会在面向用户的次要版本之间破坏我们的内部 Go API，因为[在主要版本零中允许破坏性更改](https://semver.org/#spec-item-4) 。

## React UI 开发

有关在基于 React 的 UI 上构建、运行和开发的更多信息，请参阅 React 应用程序的 [README.md](web/ui/README.md)。

## 更多信息

*   Godoc 文档可通过 [pkg.go.dev](https://pkg.go.dev/github.com/prometheus/prometheus) 获得。由于 Go 模块的特殊性，v2.x.y 将显示为 v0.x.y。
*   请参阅[社区页面](https://prometheus.io/community)了解如何通过各种沟通渠道与 Prometheus 开发人员和用户联系。

## 贡献

请参阅 [CONTRIBUTING.md](https://github.com/prometheus/prometheus/blob/main/CONTRIBUTING.md)

## 许可证

Apache 许可证 2.0，参见[许可证](https://github.com/prometheus/prometheus/blob/main/LICENSE) 。