# MediaWiki

**MediaWiki** 是一个免费、开源的 Wiki 软件包，由 PHP 编写。它是 Wikipedia 及其他 Wikimedia 项目的基础平台，每月有数亿人使用。MediaWiki 支持超过 350 种语言，凭借其可靠性和强大的功能集，拥有庞大而活跃的第三方用户和开发者社区。

## 使用说明

- 1. 数据库连接信息及更多的设置通过`LocalSettings.php`文件进行设置，

- 2. 通过取消`LocalSettings.php`文件的映射来重新初始化，并获取配置文件。**【必要】**

- 3. 然后修改并重新映射`LocalSettings.php`文件到容器内来使新设置生效。

- 4. 需要将配置文件正确放置，文件路径大概如下：`/opt/1panel/apps/local/mediawiki/mediawiki/data/LocalSettings.php`，按需修改。

- 5. **具体：安装应用/修改应用参数时，点击`高级设置`>`编辑 compose 文件`，通过修改对`LocalSettings.php`文件的映射与否，获取新配置文件/启用配置文件。**

- 6. 在`高级设置`>`编辑 compose 文件`时，可通过按需修改编排的以下部分，然后确认重建应用生效，此步骤即是修改配置文件的映射。

```
    volumes:
      - ${MEDIAWIKI_IMAGES_PATH}:/var/www/html/images
      - ${MEDIAWIKI_DATA_PATH}:${INTERNAL_DATA_PATH}
      # 删除以下行前的#号表示启用
      #- ${LOCAL_SETTINGS_PATH}:/var/www/html/LocalSettings.php  # 映射到容器内的配置文件
```