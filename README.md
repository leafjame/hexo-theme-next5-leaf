# 基于Hexo-NexT5的一款主题
![](https://img.shields.io/badge/hexo--next-v5.1.4-brightgreen) 
![](https://img.shields.io/badge/hexo--abbrink-v2.0.5-brightgreen) 
![](https://img.shields.io/badge/hexo--neat-1.0.4-brightgreen)
![](https://img.shields.io/badge/hexo--wordcount-v6.0.1-blue)
![](https://img.shields.io/badge/hexo--symbols--count--time-v0.6.0-blue)
![](https://img.shields.io/badge/hexo--generator--sitemap-v1.2.0-green)
![](https://img.shields.io/badge/hexo--baidu--url--submit-v0.0.6-brightgreen)
![](https://img.shields.io/badge/hexo--related--popular--post-3.0.6-brightgreen)
![](https://img.shields.io/badge/hexo--douban-1.1.3-green)

**效果预览：[点我](https://leafjame.github.io)**

## 前言

    网上有很多关于**github pages**博客搭建的文章，使用的比较多的是**Jekyll、hexo**。github官方推荐的是前者，经过比较，本人还是选择了**Hexo**，因为有许多人推崇的一款主题：**NexT**。

clone后一顿魔改，整了些还算顺眼的效果，share出来，希望大家**star**和**fork**！如有疑问，请提issue或着在博客给我反馈。

## 功能

> 虽然这些功能网上一搜一大把，不过还是罗列一下吧，who care（皮一下~）！

**已完成：** 
<br/>

- [x] 主页布局、颜色搭配
- [x] 全局字体设置（思源宋体）
- [x] 动态背景图片
- [x] 随机三角丝带
- [x] 鼠标点击特效(3种)
- [x] 文章虚拟背景
- [x] 文章置顶、精品
- [x] 文章排行榜（热榜）
- [x] 文章浏览、字数、时长
- [x] APlayer音乐播放器
- [x] DPlayer视频播放器
- [x] 看板娘
- [x] SEO相关
- [x] CDN相关
- [x] 个性化返回顶部
- [x] fork me from github
- [x] 博主头像旋转
- [x] 友链及相关链接页面
- [x] 近期文章推荐
- [x] 网站运行时间
- [x] 网站访问人数、访问量
- [x] 阅读全文样式
- [x] DaoVoice在线聊天
- [x] TiDio在线聊天
- [x] 来必力评论系统
- [x] Valine评论系统
- [x] abbrlink文章永久链接
- [x] neat压缩
- [x] 文章版权信息
- [x] 代码块样式
- [x] 代码块复制
- [x] 阅读结束提醒
- [x] 打赏
- [x] 百度分享
- [x] 评论区打字特效
- [x] 页面反馈
<br/>

**20190925新增以下功能：** 
<br/>
- [x] 手机端样式适配
- [x] 代码块Mac panel特效
- [x] LeanCloud切换国际版
- [x] 接入Google AdSense广告
- [x] 新增ShareJs分享
- [x] 类知乎卡片链接样式
- [x] Valine-Admin评论系统
- [x] Valine-Admin邮件通知
- [x] 相关文章推荐
- [x] 标签样式调整
- [x] 标签页自定义样式（5种）
- [x] 归档页自定义样式
- [x] 鼠标样式
- [x] 主页走马灯（轮播图）
- [x] 瀑布流相册
- [x] canvas粒子时钟
- [x] 豆瓣读书、电影
- [x] 页面其它的特效
</br>
...

## 安装

1. `Download ZIP`解压后，放到`hexo`目录`themes`主题下即可。或者使用 git命令，进入到本地`hexo`目录：

    ```shell
    git clone https://github.com/leafjame/hexo-theme-next5-leaf.git themes/leaf
    ```

2. 将其放到**themes**目录下，名字自定义。然后在站点的配置文件`_config.yml`中指定所使用的`theme`：

    ```js
    theme: leaf
    ```

### 依赖环境

#### 插件

- 插件列表

  本主题中在搭建过程中，集成了一定的插件，所列部分如下：

  ```js
  "hexo-abbrlink": "^2.0.5",   //生成文章唯一URL插件
  "hexo-baidu-url-submit": "0.0.6",  //url提交插件，用于seo
  "hexo-deployer-git": "^1.0.0",  //git插件，用于部署
  "hexo-douban": "^1.1.3", //豆瓣读书、电影插件
  "hexo-generator-baidu-sitemap": "^0.1.6",  //百度sitemap，用于seo
  "hexo-generator-sitemap": "^1.2.0",  // 同上
  "hexo-generator-feed": "^1.2.2",  // SSR插件
  "hexo-generator-index-pin-top": "^0.2.2",  //用于指定文章置顶
  "hexo-generator-search": "^2.4.0",  //本地搜索插件
  "hexo-neat": "^1.0.4",  // 压缩js、css代码的插件
  "hexo-permalink-pinyin": "^1.1.0",  // 中文链接转拼音的插件
  "hexo-related-popular-posts": "^3.0.6",  // 相关文章推荐
  "hexo-renderer-ejs": "^0.3.1",  // 是不是自带的？。。。
  "hexo-renderer-marked": "^1.0.1",  // 是不是自带的？。。。
  "hexo-renderer-stylus": "^0.3.3",  // 是不是自带的？。。。
  "hexo-symbols-count-time": "^0.6.0",  // 站点字数统计
  "hexo-tag-cloud": "^2.1.1",  //标签云
  "hexo-tag-dplayer": "^0.3.3",  //dplayer视频插件
  "hexo-wordcount": "^6.0.1",  // 字数统计插件
  "webpack-cli": "^3.3.7",  // 装hexo-abbrlink时提示装的，按需下载
  "@webpack-cli/init": "^0.2.2",  // 同上
  ```
  > 所装插件信息位于站点根目录的`package.json`文件，核对一下自己是否已经装过。

- 安装插件命令

  在站点根目录下，使用：

  ```nodejs
  npm install --save-dev hexo-neat
  ```

  即可安装hexo-neat插件，其他的插件安装方式类似。默认是安装最新版，如要指定版本号，可使用：

  ```nodejs
  npm install --save-dev hexo-neat@1.0.4
  ```

#### _config.yml文件

- next主题配置文件

  按需配置valine、leanCloud、busuanzi、tidio、hotjar、轮播图、文章推荐、点击特效、自定义标签等。

  > PS：部分功能需注册后方可使用。

- hexo站点配置文件

  按需配置abbrlink、hexo-neat、Deployment等。

附上完整版**站点配置文件**，供大家参考：

```js
# Hexo Configuration
## Docs: https://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site
title: Leaf's Blog
subtitle: 因心造境，风云由我！
signature: Java狮 北漂男 摄影 旅行 赚钱
description: Java狮 北漂男 摄影 旅行
keywords: leafjame 北宸 Java 程序员 北漂
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

# https://github.com/blinkfox/hexo-theme-matery/blob/develop/README_CN.md
permalink_pinyin:
  enable: false
  separator: '-' # default: '-'

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
  
# https://github.com/mythsman/hexo-douban
douban:
  user: your_id
  builtin: false  #否将生成页面的功能嵌入hexo s和hexo g中(false则需要使用hexo douban命令)
  book:
    title: '读书系列' # 该页面的标题
    quote: '书山有路勤为径，学海无涯苦作舟' # 写在页面开头的一段话,支持html语法.
  movie:
    title: '观影系列'
    quote: 'Life was like a box of chocolates, you never know what you’re going to get'
  timeout: 10000 # 爬取数据的超时时间

```

## 部署

  控制台`hexo clean && hexo g && hexo s`三连，浏览器输入`http://localhost:4000/`即可看到效果！
