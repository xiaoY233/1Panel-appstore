 ![tldraw](https://raw.githubusercontent.com/tldraw/tldraw/main/assets/github-hero-light-draw.png)

# tldraw

欢迎访问 tldraw 的公共单库仓库 [tldraw](https://tldraw.com)。

## 什么是 tldraw？

tldraw 是一个可协作的数字白板，可在 [tldraw.com](https://tldraw.com) 上使用。其编辑器、用户界面和其他底层库是开源的，并且在此仓库中提供。它们还通过 npm 分发。您可以使用 tldraw 为您的产品创建一个可插入的白板，或者以此为基础构建自己的无限画布应用程序。

访问 [tldraw.dev](https://tldraw.dev) 以获取更多信息。

> **注意** 本仓库包含 tldraw 当前版本的源代码。您可以在这里找到原始版本的源代码 [here](https://github.com/tldraw/tldraw-v1)。

## 安装与使用

要了解如何在您的 React 应用程序中使用 tldraw，请遵循我们的指南 [here](https://tldraw.dev/installation) 或查看 [examples sandbox](https://stackblitz.com/github/tldraw/tldraw/tree/examples?file=src%2F1-basic%2FBasicExample.tsx)。

```tsx
import { Tldraw } from '@tldraw/tldraw'
import '@tldraw/tldraw/tldraw.css'

export default function () {
	return (
		<div style={{ position: 'fixed', inset: 0 }}>
			<Tldraw />
		</div>
	)
}
```

## 本地开发

要运行本地开发服务器，首先克隆此仓库。

安装依赖：

```bash
yarn
```

启动本地开发服务器：

```bash
yarn dev
```

在 `localhost:5420` 打开示例项目。

### 示例

我们的开发服务器包含多个示例，展示了您如何自定义 tldraw 或使用其 API 的不同方法。每个示例都位于 [**apps/examples**](https://github.com/tldraw/tldraw/tree/main/apps/examples) 文件夹中。

*   例如：在基本示例中使用 `localhost:5420`。
*   示例：`localhost:5420/api` 用于 API 示例。

要了解更多关于使用 tldraw 的信息，请访问我们的文档：[docs](https://tldraw.dev)。

## 关于此仓库

### 顶层布局

这个仓库的内容分为四个主要部分：

*   `/apps` 包含我们的应用程序源代码
*   `/packages` 包含我们的公共包源代码
*   `/scripts` 包含用于构建和发布的脚本
*   `/assets` 包含应用程序依赖的图标和翻译
*   `/docs` 包含我们 docs 站点 [tldraw.dev](https://tldraw.dev) 的内容

### 应用程序

*   `examples`: 我们的本地开发 / 示例项目
*   `vscode`: 我们的 [Visual Studio Code 扩展](https://marketplace.visualstudio.com/items?itemName=tldraw-org.tldraw-vscode)

### Packages

*   `assets`: 一个用于处理 tldraw 字体和翻译的库
*   `editor`: tldraw 编辑器
*   `state`: 一个信号库，也被称为 signia
*   `store`: 一个内存中的响应式数据库
*   `tldraw`: tldraw 主包，包含编辑器和 UI
*   `tlschema`: 形状定义和迁移
*   `utils`: 其他库共享的基础数据工具
*   `validate`: 用于运行时验证的验证库

## 社区

有问题、评论或反馈？加入我们的 [discord](https://discord.gg/rhsyWMUJxd) 或 [发起讨论](https://github.com/tldraw/tldraw/discussions/new) 。

## 分发

您可以在 npm 上找到 tldraw [这里](https://www.npmjs.com/package/@tldraw/tldraw?activeTab=versions) 。

目前，tldraw 包处于测试版。我们还提供了一个 Canary 版本，该版本始终与本仓库的主要分支保持最新。

## 许可证

本仓库中各种应用程序和包的源代码（以及我们的 2.0 及以上版本的分发和发布）目前采用 Apache-2.0 许可证。这些许可条款将在我们即将发布的 2.0 版本中发生变化。如果您计划在商业产品中使用 tldraw，请联系 [hello@tldraw.com](mailto://hello@tldraw.com)。

## 贡献

请参阅我们的[贡献指南](https://github.com/tldraw/tldraw/blob/main/CONTRIBUTING.md) 。发现错误了吗？请[提交一个问题](https://github.com/tldraw/tldraw/issues/new) 。

## 联系

在 Twitter 上关注我们 [@tldraw](https://twitter.com/tldraw) 或发送邮件至 [hello@tldraw.com](mailto://hello@tldraw.com)。您还可以加入我们的 [Discord](https://discord.gg/rhsyWMUJxd) 获取快速帮助和支持。