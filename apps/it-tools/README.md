![logo](https://github.com/CorentinTh/it-tools/raw/main/.github/logo.png)

有用的工具，适用于开发人员和 IT 行业工作者。 [看看吧！](https://it-tools.tech)。

## 功能与路线图

请查看 [问题](https://github.com/CorentinTh/it-tools/issues) ，看看是否有列出的功能即将实现。

您有一个工具的想法吗？提交一个 [功能请求](https://github.com/CorentinTh/it-tools/issues/new/choose) ！

## 自托管

为您的家庭实验室提供自托管解决方案

**从 Docker Hub 获取：**

```sh
docker run -d --name it-tools --restart unless-stopped -p 8080:80 corentinth/it-tools:latest
```

**从 GitHub 包获取：**

```sh
docker run -d --name it-tools --restart unless-stopped -p 8080:80 ghcr.io/corentinth/it-tools:latest
```

**其他解决方案：**

*   [帐篷](https://www.runtipi.io/docs/apps-available)
*   [Unraid](https://unraid.net/community/apps?q=it-tools)

## 贡献

### 推荐 IDE 设置

[VSCode](https://code.visualstudio.com/) 配置以下扩展：

*   [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar)（并禁用 Vetur）
*   [TypeScript Vue 插件（Volar）](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).
*   [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
*   [i18n Ally](https://marketplace.visualstudio.com/items?itemName=lokalise.i18n-ally)

使用以下设置：

```json5
{
  "editor.formatOnSave": false,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "i18n-ally.localesPaths": [
    "locales",
    "src/tools/*/locales"
  ],
  "i18n-ally.keystyle": "nested"
}
```

### Type Support for `.vue` Imports in TS

TypeScript 默认无法处理 `.vue` 导入的类型信息，因此我们用 `vue-tsc` 替换 `tsc` CLI 进行类型检查。在编辑器中，我们需要 [TypeScript Vue 插件 (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin) 来让 TypeScript 语言服务了解 `.vue` 类型。

如果您觉得独立的 TypeScript 插件不够快，Volar 还实现了更高效的 [接管模式](https://github.com/johnsoncodehk/volar/discussions/471#discussioncomment-1361669) 。您可以通过以下步骤启用它：

1.  禁用内置的 TypeScript 扩展
    1.  从 VSCode 的命令面板运行 `Extensions: Show Built-in Extensions`
    2.  找到 `TypeScript and JavaScript Language Features` ，右键单击并选择 `禁用（工作区）`
2.  通过从命令面板运行 `开发者：重新加载窗口` 来重新加载 VSCode 窗口。

### 项目设置

```sh
pnpm install
```

### 编译和热重载以进行开发

```sh
pnpm dev
```

### 类型检查、编译和压缩以用于生产

```sh
pnpm build
```

### 使用 [Vitest](https://vitest.dev/) 运行单元测试

```sh
pnpm test
```

### 使用 [ESLint](https://eslint.org/) 进行代码检查

```sh
pnpm lint
```

### 创建一个新工具

要创建一个新工具，有一个脚本可以生成新工具的模板，只需运行：

```sh
pnpm run script:create-new-tool my-tool-name
```

它将在 `src/tools` 目录下创建正确的文件，并在 `src/tools/index.ts` 中添加导入。你只需将导入的工具添加到正确的类别并开发工具即可。

## 致谢

由 [Corentin Thomasset](https://corentin-thomasset.fr/) 用 ❤️ 编写。

该项目使用 [vercel.com](https://vercel.com) 持续部署。

[![IT Tools - Collection of handy online tools for devs, with great UX | Product Hunt](https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=345793&theme=light)](https://www.producthunt.com/posts/it-tools?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-it-tools) [![IT Tools - Collection of handy online tools for devs, with great UX | Product Hunt](https://api.producthunt.com/widgets/embed-image/v1/top-post-badge.svg?post_id=345793&theme=light&period=daily)](https://www.producthunt.com/posts/it-tools?utm_source=badge-top-post-badge&utm_medium=badge&utm_souce=badge-it-tools)

## 许可证

此项目遵循 [GNU GPLv3](https://github.com/CorentinTh/it-tools/blob/main/LICENSE) 协议。