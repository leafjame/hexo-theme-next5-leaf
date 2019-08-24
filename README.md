# 基于Hexo-NexT5的一款主题
![](https://img.shields.io/badge/hexo--next-v5.1.4-brightgreen) 
![](https://img.shields.io/badge/hexo--abbrink-v2.0.5-brightgreen) 
![](https://img.shields.io/badge/hexo--neat-1.0.4-brightgreen)
![](https://img.shields.io/badge/hexo--wordcount-v6.0.1-blue)
![](https://img.shields.io/badge/hexo--symbols--count--time-v0.6.0-blue)
![](https://img.shields.io/badge/hexo--generator--sitemap-v1.2.0-green)
![](https://img.shields.io/badge/hexo--baidu--url--submit-v0.0.6-brightgreen)

**效果展示：https://leafjame.github.io**

# 前言
最近迷上了博客，网上也看了很多关于**github pages**的，博客有使用**Jekyll**的，有**Hexo**的，各有各的优势吧，经过比较，本人最终选择了**Hexo**，可能也是跟着~~潮流~~吧😁，看着有许多人在推崇Hexo的一款主题：**NexT**，然后我也就跟做了。。。极简主题，确实很不错。

最近在NexT主题上进行了好一番魔改，参考的博客也很多，总算整出一些效果来。。自己看着还算顺眼吧。。

最近整理了一下，分享github，希望大家多多**star**、**fork**支持哦~

> 由魔改之时至今，不敢保证所有的改动都记录下来了，所以本仓库的样式**可能**会和博客里的不一样。。。

# 安装教程

直接`Download ZIP`解压后，放到`hexo`目录`themes`主题下即可。

或者使用 git命令，进入到本地`hexo`目录：

```shell
git clone https://github.com/leafjame/hexo-theme-next5-leaf.git /themes/exo-theme-next5-leaf
```
将`hexo-theme-next5-leaf`放到themes目录下即可，名字可修改为你自己想要的。

然后在站点的配置文件`_config.yml`中指定所使用的`theme`即可，如：

```js
theme: heme-next5-leaf
```

## 依赖环境

### 插件

本主题中在搭建过程中，参考了其他博客，加了挺多的新功能，所以也集成了一定的插件，所列部分如下：

```js

"hexo": "^3.9.0",
"hexo-abbrlink": "^2.0.5",   //生成文章唯一URL插件
"hexo-baidu-url-submit": "0.0.6",  //url提交插件，用于seo
"hexo-deployer-git": "^1.0.0",  //git插件，用于部署
"hexo-generator-baidu-sitemap": "^0.1.6",  //百度sitemap，用于seo
"hexo-generator-sitemap": "^1.2.0",  // 同上
"hexo-generator-feed": "^1.2.2",  // SSR插件
"hexo-generator-index-pin-top": "^0.2.2",  //用于指定文章置顶
"hexo-generator-search": "^2.4.0",  //本地搜索插件
"hexo-neat": "^1.0.4",  // 压缩js、css代码的插件
"hexo-permalink-pinyin": "^1.1.0",  // 中文链接转拼音的插件
"hexo-renderer-ejs": "^0.3.1",  // 不知道是不是自带的。。。
"hexo-renderer-marked": "^1.0.1",  // 不知道是不是自带的。。。
"hexo-renderer-stylus": "^0.3.3",  // 不知道是不是自带的。。。
"hexo-server": "^0.3.3",  // 不知道是不是自带的。。。
"hexo-symbols-count-time": "^0.6.0",  // 站点字数统计
"hexo-tag-cloud": "^2.1.1",  //标签云
"hexo-tag-dplayer": "^0.3.3",  //dplayer视频插件
"hexo-wordcount": "^6.0.1",  // 字数统计插件
"webpack-cli": "^3.3.7",  // 装exo-abbrlink时提示装的，按需下载
"@webpack-cli/init": "^0.2.2",  // 同上
```
> 所装插件会在站点根目录的`package.json`中列出来，核对一下是不是自己已经装过了。

插件列了这些，好多都是非必须的，不一定都得加上，按需加吧，不想用的功能，可以在主题的配置文件中选择关闭。

安装插件命令：
在站点根目录下，使用

```nodejs
npm install --save-dev hexo-neat
```
命令即可，其他插件安装方式一样。默认安装时最新版的插件，如要指定版本号，可以使用：

```nodejs
npm install --save-dev hexo-neat@1.0.4
```

### _config.yml文件

下面所列的几项配置，自己用到的就配置上，默认是**没用启用**的

- **配置valine评论系统**

在主题配置文件`_config.xml`中搜索`valine`，找到如下配置：

```js
valine:
  enable: true
  appid:   # your leancloud application appid
  appkey:  # your leancloud application appkey
  notify: true # mail notifier , https://github.com/xCss/Valine/wiki
  verify: false # Verification code
  placeholder: '来都来了，不说点什么嘛~🤒'  # comment box placeholder
  avatar: mm # gravatar style
  guest_info: nick,mail,link # custom comment header
  pageSize: 10 # pagination size
```
`valine`后台使用的是`leancloud`做数据存储的，所以使用它之前，你得在[leancloud](https://leancloud.cn/)官网注册，得到`appid `、`appkey `，然后填入上述配置文件中。

`valine`文档可参考：https://valine.js.org

> PS：leancloud现在都需要实名认证了，如不想上传身份证，可使用谷歌的`firestore`来替代。
参考我的这篇文章：[NexT 文章阅读量排行（热榜）功能](https://leafjame.github.io/posts/781439527.html)

- **配置leanCloud_visitors**

这是用于显示文章阅读次数的，上边所说的排行榜（热榜）功能，是基于这个来的，要同时开启。
如果你使用`leancloud`来实现，则需要开启。在主题配置文件_config.xml中搜索`leanCloud_visitors`，配置：

```js
leancloud_visitors:
  enable: true
  app_id:  # app_id可使用valine时申请的
  app_key: # app_key可使用valine时申请的
```
> PS：如果你没用`leancloud`，又需要统计文章阅读量，可使用`不蒜子`提供的功能

主题配置文件如下：（非必须）

```js
busuanzi_count:
  # count values only if the other configs are false
  enable: true
  # custom uv span for the whole site
  site_uv: true
  site_uv_header: <i class="fa fa-user"></i>访问人数
  site_uv_footer: 人次
  # custom pv span for the whole site
  site_pv: true
  site_pv_header: <i class="fa fa-eye"></i>总访问量
  site_pv_footer: 次
  # custom pv span for one page only
  page_pv: true
  page_pv_header: <i class="fa fa-file-o"></i> 浏览
  page_pv_footer: 次
```

- tidio在线聊天
主题配置文件中，是开启的，不用可关闭。使用时需要在下边的网址注册

```js
# Tidio online chat
# see: https://www.tidiochat.com
tidio:
  enable: true
  key:  # Public_Key
```

- 页面反馈功能

不用可关闭，用法同上。

```js
# Hotjar页面反馈
# see: https://www.hotjar.com/
hotjar:
  enable: true
  siteID:  # site ID
```

- hexo站点配置文件

站点配置按需修改。比如要开启文章URl链接唯一功能的，则需要修改`permalink`，再增加`abbrlink`的相关配置

可参考我的：

```js
# Hexo Configuration
## Docs: https://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site
title: Leaf's Blog
subtitle: 因心造境，风云由我！
signature: Java狮 北漂男 摄影 旅行 赚钱 # 解决开启theme.seo后，description描述不显示
description: Java狮 北漂男 摄影 旅行 赚钱 ITer
keywords: leafjame 北宸 Java 程序员 北漂 北京 旅行 摄像 hexo nexT github 教程 demo
author: 北宸
language: zh-Hans
timezone:

# URL
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://leafjame.github.io
root: /
#permalink: :year/:month/:day/:title/ #对搜索引擎是十分不友好的
#permalink: :title.html
permalink: posts/:abbrlink.html  # 此处可以自己设置，也可以直接使用 :/abbrlink
permalink_defaults:

# 文章链接唯一永久化
abbrlink:
  alg: crc32  #算法： crc16(default) and crc32
  rep: dec    #进制： dec(default) and hex

baidu_url_submit:
  count: 6 ## 比如3，代表提交最新的三个链接
  host: https://leafjame.github.io ## 在百度站长平台中注册的域名
  token: XXXXXX ## 请注意这是您的秘钥， 所以请不要把博客源代码发布在公众仓库里!
  path: baidu_urls.txt ## 文本文档的地址， 新链接会保存在此文本文档里


# Directory
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
#skip_render:

# 为部署到github仓库后的项目添加README.md文件
skip_render: README.md

# Writing
#https://hexo.io/zh-cn/docs/writing
#new_post_name: :year-:month-:day-:title.md #方便已日期来管理文章
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  auto_detect: true
  tab_replace:
  
# Home page setting
# path: Root path for your blogs index page. (default = '')
# per_page: Posts displayed per page. (0 = disable pagination)
# order_by: Posts order. (Order by date descending by default)
index_generator:
  path: ''
  per_page: 10
  order_by: -date
  
# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# Pagination
## Set per_page to 0 to disable pagination
per_page: 10
pagination_dir: page

# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
#theme: landscape
theme: next

Plugins:
- hexo-generator-baidu-sitemap
- hexo-generator-sitemap

baidusitemap:
  path: baidusitemap.xml
sitemap:
  path: sitemap.xml

# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
- type: git
  repository: 
            github: https://github.com/leafjame/leafjame.github.io.git
            gitee: https://gitee.com/leafjame/leafjame.git
  branch: master

- type: baidu_url_submitter

# Search
search:
  path: ./public/search.xml
  field: post
  format: html
  limit: 10000

# feed
# Dependencies: https://github.com/hexojs/hexo-generator-feed
feed:
  type: atom
  path: atom.xml
  limit: 20
  hub:
  content:

# 中文链接转拼音 npm i hexo-permalink-pinyin --save
# https://github.com/blinkfox/hexo-theme-matery/blob/develop/README_CN.md
permalink_pinyin:
  enable: false
  separator: '-' # default: '-'

# hexo-neat 博文压缩
# https://blog.csdn.net/lewky_liu/article/details/82432003
# https://github.com/rozbo/hexo-neat
neat_enable: true
# 压缩html
neat_html:
  enable: true
  exclude:
# 压缩css
neat_css:
  enable: true
  exclude:
  - '**/*.min.css'
  - '**/needsharebutton.css'
# 压缩js
neat_js:
  enable: true
  mangle: true
  output:
  compress:
  exclude:
  - '**/*.min.js'
  - '**/jquery.fancybox.pack.js'
  - '**/index.js'
  - '**/waifu-tips.js'
  - '**/iframe.js'
  - '**/fireworks.js'

```
> **友链**和**热榜**功能，可参考我的博客

# 部署

做完以上操作后，使用`hexo`命令三连，打开博客，看下效果是不是有了呢~😊

> PS： **使用过程中如发现什么问题，请提issue或者在博客给我反馈哦~。。由于博客初期魔改，配置的挺多的，现在share的时候，也许有某个地方忘了、或者提供不对的地方，还请谅解。。。**
