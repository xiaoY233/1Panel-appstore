## 账号密码
> 默认账户1
- 账号：admin
- 密码：password

> 默认账户2
- 账号：admin2
- 密码：password

## MD文档

需要展示的 `Markdown` 文档，需要放置在应用数据目录下的 `/data/content/pages` 文件夹下。

在此文件夹下新建文件夹，则就是网页上的新建分类。

## 配置文件

> `Raneto` 的配置文件为 `config.js`，在应用数据目录下的 `/data/config` 目录下，编辑`config.js`文件修改设置。


## 注意

编辑 `config.js` 文件修改设置。

- 站点名称

```shel
site_title: 'Raneto Docs',
```

- 用户名和密码
```shell
  credentials: [
    {
      username: 'admin',
      password: 'password',
    },
    {
      username: 'admin2',
      password: 'password',
    },
  ],
  ```

- 支持中文语言
```shell
locale: 'zh',

  // Support search with extra languages
  searchExtraLanguages: ['zh'],
```