# 使用说明

*   默认账户与密码(注意大小写)

```
username:Admin
password:zabbix
```

## 注意事项

**注意：默认版本是Zabbix-MySQL版本的，Zabbix 6.X的需求环境MySQL8**

**`postgresql`的版本，资源占用会小很多。**

商店自带的`MySQL 8`的数据库格式设置与`Zabbix`需求有所不同，`zabbix-server-mysql`容器会提示存在错误。

但是实际能够运行。如有错误，期待反馈。

*   带`&mysql`版本，会安装符合`Zabbix`格式要求的数据库版本
*   不带`&mysql`的版本，默认调用面板安装的数据库

# 原始相关

Zabbix 是自由软件，采用 GNU 通用公共许可证（GPL）版本 2 发布。

您可以根据自由软件基金会发布的 GNU GPL 的条款自由分发和/或修改它；您可以使用版本 2 的许可证，或者（按您的选择）使用该许可证的任何后续版本。

GPL 的正式条款可以在 [http://www.fsf.org/licenses/](http://www.fsf.org/licenses/) 查看。

该程序是以希望它会对你有用为基础进行分发的，但 是没有任何担保；甚至包括适销性或特定用途适用性的隐含担保。更多详情请参见 GNU 通用公共许可证。

OpenSSL 链接例外

此外，作为特殊例外，我们允许将 Zabbix 的代码与 OpenSSL 项目 OpenSSL 库（或使用与 OpenSSL 库相同许可证的 OpenSSL 库的修改版本）链接，并分发链接后的可执行文件。

请参见 [https://www.zabbix.com/](https://www.zabbix.com/) 获取有关 Zabbix 的详细信息。

在线 Zabbix 文档可在 [https://www.zabbix.com/documentation/6.2/manual/](https://www.zabbix.com/documentation/6.2/manual/) .

Zabbix 安装指南可在 [https://www.zabbix.com/documentation/6.2/manual/installation/](https://www.zabbix.com/documentation/6.2/manual/installation/) .

如果你是从包安装 Zabbix，相关说明可以在 [https://www.zabbix.com/documentation/6.2/manual/installation/install\_from\_packages/](https://www.zabbix.com/documentation/6.2/manual/installation/install_from_packages/) 查看 。