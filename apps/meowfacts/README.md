# 使用说明

当第一次部署时，假如出现异常问题，如容器未找到等，解决方式如下：

点击`已安装应用` > 找到应用 > 点`参数` > 点`编辑` \> 点`高级设置` \> 点击右下角`确认`。

采用的从源码编译镜像的方式，国内机子的话，假如因为各种网络原因，连接不上`github`，

可以尝试修改`/opt/1panel/resource/apps/local/meowfacts/latest/Dockerfile` 里的`github`源码链接，用诸如`ghproxy`等。

# 原始相关
meowfacts
=========

[![Issues](https://img.shields.io/github/issues/wh-iterabb-it/meowfacts.svg)](https://github.com/wh-iterabb-it/meowfacts/issues)
[![License](https://img.shields.io/badge/license-GPL-blue.svg)](https://github.com/wh-iterabb-it/meowfacts/blob/main/LICENSE)
![Known Vulnerabilities](https://snyk.io/test/github/wh-iterabb-it/meowfacts/badge.svg) 
[![codecov](https://codecov.io/gh/wh-iterabb-it/meowfacts/branch/main/graph/badge.svg)](https://codecov.io/gh/wh-iterabb-it/meowfacts)

## 描述：

一个简单的 API，通过 GET 请求返回关于猫的随机事实

### 示例用法

```
curl https://meowfacts.herokuapp.com/
```

响应

```json
{
  "data": [
    "0": 	"Mother cats teach their kittens to use the litter box."
  ]
}
```

### 高级用法

您可以通过使用 GET 参数 `count` 一次请求多个事实

```bash
curl https://meowfacts.herokuapp.com/?count=3
```

响应

```json
{
  "data": [
    "0": 	"Mother cats teach their kittens to use the litter box.",
    "1": "A cat can sprint at about thirty-one miles per hour.",
    "2": "The worlds richest cat is worth $13 million after his human passed away and left her fortune to him."
  ]
}
```

您可以请求一个特定的信息，如果您知道其 ID/顺序，可以通过传递 GET 参数 `id` 来获取

```bash
curl https://meowfacts.herokuapp.com/?id=3
```

响应

```json
{
  "data": [
    "0": 	"Mother cats teach their kittens to use the litter box."
  ]
}
```

### 语言支持

您可以通过使用 GET 参数 `lang` 来请求不同语言的响应

```bash
curl https://meowfacts.herokuapp.com/?lang=ukr
```

响应

```json
{
  "data": [
    "0": 	"Найбагатший у світі кіт коштує 13 мільйонів доларів після того, як його людина померла і залишила йому свій стан"
  ]
}
```

#### 支持的语言

支持的语言列表如下，您可以使用第一列中的任何 `lang Values` 作为 `lang` 参数。

"?lang=esp"和"?lang=esp-mx"都将返回西班牙语作为您的响应，并且仅使用 `ISO-639-1` 代码将默认为 esp-mx，以便简化。

| LANG 变量 | ISO 639-1 | 语言名称 | 本地化（国家） |
| --- | --- | --- | --- |
| eng-us | eng | 英文 | USA |
| ces-cz 或 cze-cz | cze (B) ces (T) | 捷克语 | CZ |
| ger-de | ger | 德语 | DE |
| esp-es | esp | 西班牙语 | ES |
| esp-mx | esp | 西班牙语（默认） | MX |
| rus-ru | rus | 俄语 | RUS |
| por-br | por | 葡萄牙语 | BR |
| tl-fil | fil | 菲律宾语 | PH |
| ukr-ua | ukr | 乌克兰语 | UA |
| urd-ur | urd | 乌尔都语 | UR |
| ita-it | ita | 意大利语 | IT |
| zho-tw | zho | 中文 | TW（台湾） |

帮助我们扩展和改进此 API 的国际化（点击展开）

### 帮助我们扩展和改进此 API 的国际化

注意：我们正在尝试遵循浏览器的语言标签，这些标签在 RFC 5646 中正式定义，它们依赖于 ISO 639 标准（通常是 639-1 代码列表）来使用语言代码。

我们非常希望您能通过查看我们的《贡献者招募》来帮助我们，看看您是否能够做出贡献，让我们更加包容并支持更多语言。

### 文档

[![](https://raw.githubusercontent.com/swagger-api/swagger.io/wordpress/images/assets/SW-logo-clr.png)](https://app.swaggerhub.com/apis-docs/wh-iterabb-it/meowfacts/1.0.0)

[![](https://rapidapi.com/static-assets/default/dark-logo-78e48dc1-ca3f-4d67-a6f5-74032f439c8b.svg)](https://rapidapi.com/wh-iterabb-it-wh-iterabb-it-default/api/meowfacts/)

[![](https://img.shields.io/badge/Community_Documentation-FFFFFF.svg?logo=bookstack&logoColor=blue&style=for-the-badge)](https://meow-facts.netlify.app/)

## 本地开发

### 安装

```
npm install
```

基本用法

```
npm run start
```

### 奉献与资助

这个 API 专门为开心果而设；在困难时期，她给我带来了极大的安慰。言语无法表达我对她的感激之情。

![My cat, Sleeping on her back on a table, she did this everywhere because the fan would cool her belly.](https://i.imgur.com/2EGh2Bp.jpg)

如果您喜欢这个 API，或者只是喜欢猫，请向以下地址捐款：

[纽约动物项目网站](https://www.animalprojectnyc.org/)

[纽约动物项目 Paypal 链接](https://www.paypal.me/animalproject)

《NYC 动物项目》是一家位于纽约市中心的努力实现“零安乐”的猫收容所，完全依赖寄养者和小额捐赠。我可以亲自告诉您，作为他们的志愿者，即使是几分钱的捐赠也会对这个非常小的组织产生差异。我从他们那里寄养了许多小猫，Pistachio 是那个未被领养的小不点。她很害羞，但当她安定下来后，就非常外向。我强烈推荐如果您能的话，去寄养和领养。them, and Pistachio was the runt that went un-adopted. She was shy, but very outgoing when she got settled. I highly recommend to foster and adopt if you can.</p>

</div>


them, and Pistachio was the runt that went un-adopted. She was shy, but very outgoing when she got settled. I highly recommend to foster and adopt if you can.</p>

</div>


them, and Pistachio was the runt that went un-adopted. She was shy, but very outgoing when she got settled. I highly recommend to foster and adopt if you can.</p>

</div>


them, and Pistachio was the runt that went un-adopted. She was shy, but very outgoing when she got settled. I highly recommend to foster and adopt if you can.</p>

</div>


