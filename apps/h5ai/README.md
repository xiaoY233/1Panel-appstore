# h5ai

[![license](https://img.shields.io/badge/license-MIT-a0a060.svg?style=flat-square)](https://github.com/lrsjng/h5ai) [![web](https://img.shields.io/badge/web-larsjung.de/h5ai-a0a060.svg?style=flat-square)](https://larsjung.de/h5ai/) [![github](https://img.shields.io/badge/github-lrsjng/h5ai-a0a060.svg?style=flat-square)](https://github.com/lrsjng/h5ai)

现代 HTTP 网络服务器索引，适用于 Apache httpd、lighttpd 和 nginx。

## 重要

*   不要安装来自 `src` 文件夹的任何文件，它们需要预处理才能正确工作！
*   找到预处理的软件包和详细的安装说明 [项目页面](https://larsjung.de/h5ai/) .
*   对于错误报告和功能请求，请使用[问题](https://github.com/lrsjng/h5ai/issues) 。

## 构建

有针对最新[版本](https://release.larsjung.de/h5ai/)的安装准备包和 [开发版本](https://release.larsjung.de/h5ai/develop/) 。但若要自行构建 **h5ai**，则可以使用 `git clone` 或下载仓库。在根目录下运行以下命令，以在 `build` 文件夹中找到一个全新的 zip 文件（仅在 Linux 上测试，需要安装 [`node 10.0+`](https://nodejs.org)，可能在其他配置下也能工作）。

```sh
> npm install
> npm run build
```

## 许可证

MIT 许可证 (MIT)

版权所有 (c) 2020 Lars Jung ([https://larsjung.de](https://larsjung.de))

本协议授予任何获得本软件及其相关文档副本（以下简称“软件”）的个人免费使用软件的权利，不受限制地处理软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或销售软件的副本，并允许向软件提供者提供软件的个人进行上述操作，但须遵守以下条件：

上述版权声明和本许可声明应包含在软件的所有副本或主要部分中。

软件按“原样”提供，不提供任何形式的保证，无论是明示的、暗示的，包括但不限于适销性、特定用途适用性和非侵权性保证。在任何情况下，作者或版权所有者不对任何索赔、损害或其他责任负责，无论这些责任是因合同行为、侵权行为或其他行为引起的，无论这些责任是否与软件或其使用或其他方式有关。

## 参考文献

从其他项目中获利，所有这些项目都同样采用 MIT 许可。例外情况是一些[材料设计图标](https://github.com/google/material-design-icons) （CC BY 4.0）。