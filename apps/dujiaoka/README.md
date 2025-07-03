<p align="center"><img src="https://i.loli.net/2020/04/07/nAzjDJlX7oc5qEw.png" width="400"></p>

<p align="center">
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue" alt="license MIT"></a>
<a href="https://github.com/assimon/dujiaoka/releases/tag/2.0.4"><img src="https://img.shields.io/badge/version-2.0.4-red" alt="version 2.0.4"></a>
<a href="https://www.php.net/releases/7_4_0.php"><img src="https://img.shields.io/badge/PHP-7.4-lightgrey" alt="php74"></a>
<a href="https://shang.qq.com/wpa/qunwpa?idkey=37b6b06f7c941dae20dcd5784088905d6461064d7f33478692f0c4215546cee0"><img src="https://img.shields.io/badge/QQ%E7%BE%A4-568679748-green" alt="QQ群：568679748"></a>
</p>

## 独角数卡

开源式站长自动化售货解决方案、高效、稳定、快速！

## 默认后台

- 后台路径 `/admin`
- 默认管理员账号 `admin`
- 默认管理员密码 `admin`

## 使用说明

- 1. 安装时需要先创建 MySQL 数据库
- 2. 首次安装，不需要在意运行是否正常，需要先填写应用目录下的配置文件，例如`/opt/1panel/apps/local/dujiaoka/dujiaoka/data/env.conf`，然后重建应用
- 3. 填写`env.conf`完成后，然后访问端口进入初始化安装，填写相关数据库与 redis 信息，要与`env.conf`一致
- 4. 完成安装后点击编辑应用参数，将`是否进行初始化安装`的选项改为`false`，保存确定后就会重建应用
