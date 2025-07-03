> **注意**
> 
> 1.  请勿担心上述安全公告。发现并发布后会立即修复并通知用户
> 2.  我们在中国开发者内测网站 [code.onedev.io](https://code.onedev.io/onedev/server) 上开发 OneDev，所有问题和拉取请求都应提交到该网站

# 自托管 Git 服务器，附带看板和 CI/CD

## [快速入门](https://docs.onedev.io) | [安装指南](https://docs.onedev.io/category/installation-guide) | [全部文档](https://docs.onedev.io)

## 开箱即用的符号搜索和导航

当然，IDE 在这方面做得很好，但很多时候我们需要在旧提交中搜索（调查发布版本的问题等），而在 IDE 中切换提交可能会很麻烦且速度慢。

它通过使用 ANTLR 分析源代码，增量提取符号进行存储，速度快且空间效率高。现在支持 Java、JavaScript、C、C++、CSharp、Go、PHP、Python、CSS、SCSS、LESS 和 R。GitHub 几年前就添加了这一功能，但似乎只适用于主分支，而 GitLab 需要配置 CI 任务生成并上传 LSIF，这很麻烦且如果为每个提交都这样做会占用大量空间。

在审查提交或拉取请求时，你也可以跳转到符号定义。

![searchsymbol](https://github.com/theonedev/onedev/raw/main/doc/images/search-symbol.gif)

![jumpsymbol](https://github.com/theonedev/onedev/raw/main/doc/images/symbol.gif)

## 使用正则表达式搜索代码

您可以切换到任何提交，并使用正则表达式搜索代码。OneDev 在后台会使用 Lucene 增量地索引代码。在搜索时，正则表达式中的字面三元组会被提取出来进行粗略搜索，然后在结果中进行精确匹配。这使得正则表达式搜索非常快速，即使对于像 Linux 这样的大型仓库也是如此。

![regex](https://github.com/theonedev/onedev/raw/main/doc/images/regex-search.gif)

## 使用静态分析结果注释源代码/差异以方便代码审查

当然，GitHub 上有许多第三方应用程序可以做到这一点，但是它们会在自己的应用程序中显示结果，这使得在分析结果上添加评论等审查活动变得困难。更不用说你需要为此付费。

![annotation](https://github.com/theonedev/onedev/raw/main/doc/images/annotation.png)

## 自定义问题状态和字段，并深度集成 CI/CD

GitHub/GitLab 问题的简单开启/关闭状态并不适用于许多工作流。考虑到客户提交的问题：

1.  如果开发人员在提交代码时关闭问题，客户将收到通知并可能要求发布修复该问题的版本。
2.  如果开发人员在发布时关闭问题，测试人员在测试时可能会对需要测试哪些问题感到困惑，因为所有问题在测试时都处于开启状态。

自定义问题状态后，我们可以使用四种状态来处理问题：打开、已承诺、待测试和已发布：

1.  当代码被提交时，问题会自动转到已承诺状态。
2.  当创建并部署测试构建时，问题会自动转到待测试状态。QA 将会被通知，并可以查看问题详情以了解测试构建部署到了哪个环境。
3.  当测试通过并创建发布构建时，提交问题的客户将会被通知，并可以查看问题详情以了解包含修复的发布版本是哪个。

![boards](https://github.com/theonedev/onedev/raw/main/doc/images/boards.png)

![fixing-build](https://github.com/theonedev/onedev/raw/main/doc/images/fixing-build.png)

## 通过电子邮件创建/讨论问题的服务台

服务台允许用户无需拥有 OneDev 账户即可通过电子邮件提交工单。这些工单可以在您希望的项目中创建，并指派给团队中的合适成员。所有进一步的讨论都可以完全通过电子邮件进行，讨论内容将作为评论发布到工单中。用户还将收到任何工单活动的通知，例如当创建或部署了相关版本时

![service-desk.png](https://github.com/theonedev/onedev/raw/main/doc/images/service-desk.png)

## 强大的直观查询语言

得益于 ANTLR，OneDev 配备了针对项目、提交、问题、构建和拉取请求的复杂查询语言，具有直观的自动补全和提示功能。例如，它使我们的客户能够找到他们当前运行版本和最新版本之间的已修复问题，并使我们能够找到所有涉及特定模块的提交，等等。

查询可以保存和订阅，这样你就不会错过任何感兴趣的内容。

![query](https://github.com/theonedev/onedev/raw/main/doc/images/query.gif)

## 无需编写 YAML 的完整 CI/CD 引擎

OneDev 随附图形界面生成 CI/CD YAML。无需搜索 YAML 语法。一条简单的 Docker 命令即可启动 OneDev 服务器，并自动获得一个本地 CI/CD 执行器。担心服务器能力无法运行大量任务？再一条简单的命令即可连接来自任何机器的自我更新代理。想要自动扩展的 CI/CD 农场？一条 Helm 命令即可将 OneDev 部署到 k8s 集群。

构建管道、矩阵任务、类型参数、参数链、步骤模板、构建推广……太多精妙的功能无法一一详述……

![job-def](https://github.com/theonedev/onedev/raw/main/doc/images/job-command.gif)

![run-job](https://github.com/theonedev/onedev/raw/main/doc/images/build-option.gif)

![pipeline.gif](https://github.com/theonedev/onedev/raw/main/doc/images/pipeline.gif)

## 灵活的拉取请求审查政策和审查者建议

根据提交者、分支和修改文件指定拉取请求审查政策。OneDev 可以利用 Git 的变更历史来为涉及某些文件的拉取请求建议最合适的审查者。

![review-policy](https://github.com/theonedev/onedev/raw/main/doc/images/review-policy.gif)

## 轻量级审查无需拉取请求

在任何代码部分或差异上添加评论以开始轻量级审查，而无需打开拉取请求。审查评论会随着代码修改甚至文件重命名而保留，作为文档使用。

每条讨论都按线程组织，这样您可以轻松了解带有新评论/更新的讨论。

![file-comment](https://github.com/theonedev/onedev/raw/main/doc/images/file-comment.gif)

![thread-comments](https://github.com/theonedev/onedev/raw/main/doc/images/threaded-comments.png)

## 快速访问功能面板

按 cmd/ctrl-k 可从任何地方弹出功能面板。搜索项目、文件、问题、拉取请求、构建以及各种设置，并在不离开键盘的情况下跳转到它们

![command-palette.gif](https://github.com/theonedev/onedev/raw/main/doc/images/command-palette.gif)

## 智能编辑器让您愉快地编写 Markdown

在 GitHub/GitLab 的 markdown 文件中嵌入图片时，你需要在单独的页面上传图片，然后找出相对路径来引用该图片。而在 OneDev 中，你只需在同一个编辑器中将图片上传到目标文件夹，链接将自动生成。

OneDev 在编辑窗口中跟踪你的光标，并根据需要滚动预览窗口，这样你就可以始终预览你正在输入的内容。

![markdown](https://github.com/theonedev/onedev/raw/main/doc/images/markdown.gif)

## 按语言的代码行趋势

OneDev 通过检查主分支的 git 历史记录，高效地计算按语言的源代码行趋势。

![stats](https://github.com/theonedev/onedev/raw/main/doc/images/stats.png)

## 便于设置继承的项目层次结构

组织结构最适合公共服务。然而，对于内部自托管使用，我们认为层次结构更实用，便于组织项目。子项目可以从父项目继承设置，并在必要时可以选择性地覆盖某些设置。这大大减少了管理公司中众多项目的开销。

## 快速可靠且资源使用适中

OneDev 在性能方面经过精心设计。在配备 2 核 2GB 内存的机器上，您将能够为中型项目获得所有上述功能。它已经连续使用了 5 年以上，具有经过实战验证的可靠性。修复 bug 是我们的最高优先级，通常在野外几乎不存在已知的 bug。

* * *

# 特别感谢

![yourkit](https://www.yourkit.com/images/yklogo.png)

[YourKit](https://yourkit.com) 通过提供他们出色的 Java Profiler 的免费开源许可支持这个项目