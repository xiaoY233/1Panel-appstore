# OpenResume

OpenResume 是一个强大的开源简历制作工具和简历解析器。

OpenResume 的目标是为每个人提供免费的现代专业简历设计，并使任何人都能自信地申请工作。

官方网站: [https://open-resume.com](https://open-resume.com)

## 🛠️ 简历生成器

OpenResume 的简历生成器可以让用户轻松创建现代专业的简历。

![Resume Builder Demo](https://i.ibb.co/jzcrrt8/resume-builder-demo-optimize.gif)

它有5大核心功能：

| 功能 | 描述 |
| --- | --- |
| **1. 实时界面更新** | 你的简历 PDF 会实时更新，当你输入简历信息时，你可以轻松看到最终输出效果。 |
| **2. 现代专业简历设计** | 简历 PDF 采用了符合美国最佳实践的现代专业设计，并且对 Greenhouse 和 Lever 等顶级 ATS 平台友好。它会自动格式化字体、字号、边距和项目符号，以确保一致性并避免人为错误。 |
| **3. 注重隐私** | 该应用仅在您的浏览器中本地运行，这意味着无需注册，也不会有任何数据离开您的浏览器，因此它能让您对自己的个人数据感到安心。（有趣的是：仅在本地运行意味着即使您断开网络连接，应用仍然可以正常工作。） |
| **4. 从现有简历 PDF 导入** | 如果您已有现有的简历 PDF，可以选择直接导入，这样您可以在几秒钟内将简历设计更新为现代专业的设计。 |
| **5. 成功的跟踪记录** | OpenResume 用户已经从 Dropbox、Google、Meta 等顶级公司获得面试和录用通知。这已经被证明有效，并受到招聘人员和招聘经理的青睐。 |

## 🔍 简历解析器

OpenResume 的第二个组件是简历解析器。对于已有简历的用户，简历解析器可以帮助测试和确认其在 ATS（申请跟踪系统）中的可读性。

![Resume Parser Demo](https://i.ibb.co/JvSVwNk/resume-parser-demo-optimize.gif)

您可以在“ [简历解析器算法深度解析](https://open-resume.com/resume-parser) ”部分了解更多关于简历解析器算法的内容。

## 技术栈

| 类别 | 选择 | 描述 |
| --- | --- | --- |
| 语言 | TypeScript | TypeScript 是带有静态类型检查的 JavaScript，有助于在代码编写时捕获许多愚蠢的错误。 |
| UI 库 | React | React 的声明式语法和基于组件的架构使其简单易用地开发出响应式的可重用组件。 |
| 状态管理 | Redux Toolkit | Redux toolkit 减少了设置和更新中央 Redux 店面的样板代码，从而在管理复杂的简历状态时更加高效。 |
| CSS Framework | Tailwind CSS | Tailwind 通过提供有用的 CSS 工具类加快了开发速度，并消除了在 tsx 和 css 文件之间切换的需要。 |
| Web 框架 | NextJS 13 | Next.js 支持静态网站生成，并帮助构建支持 SEO 的高效 React 网页。 |
| PDF 读者 | PDF.js | PDF.js 从 PDF 文件中读取内容，并在简历解析的第一步中用于读取简历 PDF 的内容。 |
| PDF 渲染器 | React-pdf | React-pdf 创建 PDF 文件，并且被简历生成器用于创建可下载的 PDF 文件。 |

## 📁 项目结构

OpenResume 使用 NextJS Web 框架并遵循其项目结构。源代码位于 `src/app`。总共有 4 个页面路由，如下表所示。（代码路径相对于 `src/app`）

| 页面路由 | 代码路径 | 描述 |
| --- | --- | --- |
| / | /page.tsx | 首页包含英雄横幅、自动输入简历、步骤、客户评价、logo 云等内容 |
| /resume-import | /resume-import/page.tsx | 用于导入简历的页面，可以从中选择从现有简历 PDF 导入数据。主要使用的组件是 ResumeDropzone（ /components/ResumeDropzone.tsx ） |
| /resume-builder | /resume-builder/page.tsx | 简历构建页面，用于构建和下载简历 PDF。主要使用的组件是 ResumeForm（/components/ResumeForm）和 Resume（/components/Resume） |
| /resume-parser | /resume-parser/page.tsx | 简历解析页面，用于测试简历的 AST 可读性。主要使用的库是 parseResumeFromPdf (/lib/parse-resume-from-pdf) |

## 💻 本地开发

### 方法 1: npm

1.  下载仓库 `git clone https://github.com/xitanggg/open-resume.git`
2.  更改目录 `cd open-resume`
3.  安装依赖 `npm install`
4.  启动开发服务器 `npm run dev`
5.  打开浏览器并访问 [http://localhost:3000](http://localhost:3000) 查看 OpenResume 在线版本

### 方法 2: Docker

1.  下载仓库 `git clone https://github.com/xitanggg/open-resume.git`
2.  切换目录 `cd open-resume`
3.  构建容器 `docker build -t open-resume .`
4.  启动容器 `docker run -p 3000:3000 open-resume`
5.  打开浏览器并访问 [http://localhost:3000](http://localhost:3000) 查看 OpenResume 在线版本