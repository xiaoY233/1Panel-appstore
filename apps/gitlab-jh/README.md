# GitLab

### 使用建议

- 对于最多 20 个请求每秒或 1,000 个用户，您应该拥有 8 个 vCPU。
- 对于最多 20 个请求每秒或 1,000 个用户，您应该拥有 16 GB 的内存。
- 内存小于 2 GB 时无法访问。

### 管理员账户

- 默认的管理员账户为`root`，密码在`config`目录中的`initial_root_password`文件。
- 如果你的1Panel安装在`/opt`，则`initial_root_password`位于`/opt/1panel/apps/local/gitlab-jh/localgitlab-jh/config/initial_root_password`
- 该密码24小时内有效，请及时修改密码。

### 使用偏好

- 关于将语言偏好设置为中文，请参考[官方文档](https://docs.gitlab.com/user/profile/preferences/#change-your-display-language-on-the-gitlab-ui)。

### 版本更新

- 虽然提供了带版本号的镜像，但是由于该镜像存放在私有镜像源`registry.gitlab.cn`，无法自动获取新版本。请[访问链接](https://packages.gitlab.cn/#browse/search=name.raw=gitlab-jh%20AND%20format=apt)自行获取最新的版本号。

![](https://im.gurl.eu.org/file/AgACAgEAAxkDAAEBNCVoSsLPzAvfsmEO9LgyDw5JVZ97OgACQq4xG0OAWEY380n55WR5vAEAAwIAA3cAAzYE.png)
