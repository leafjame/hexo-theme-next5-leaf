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

自2019年七夕起，我便痴迷于博客不能自拔。网上看了很多关于**github pages**博客搭建的文章，有使用**Jekyll**的，有使用**Hexo**的...各有各的优势。经过比较，本人最终选择了**Hexo**，不知道算不算跟着~~潮流~~走，看着有许多人在推崇Hexo的一款主题：**NexT**，然后我也跟着做了，极简主题，确实很不错。

之后在NexT主题上进行了好一番魔改，参考的博客也很多，总算整出一些效果来，自己看着还算顺眼吧，整理一下share出来，希望大家多多**star**、**fork**支持哦~

# 功能概览

> 虽然这些功能网上一搜一大把，不过还是罗列一下吧，who care呢~

**已完成：** 
<br/>

- [x] 主页布局、颜色搭配
- [x] 全局字体设置（思源宋体）
- [x] 动态背景图片
- [x] 随机三角丝带
- [x] 鼠标点击特效(三种)
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
【截至20190901】更多功能待你来发现...</br>
.</br>
.</br>
.</br>

**进行中：** 
<br/>
- [ ] 手机端样式适配
- [ ] 代码块Mac panel特效
- [ ] LeanCloud切换国际版
- [ ] 接入Google AdSense广告
- [ ] 新增ShareJs分享
- [ ] 类知乎卡片链接样式
- [ ] Valine-Admin评论系统
- [ ] Valine-Admin邮件通知
- [ ] 相关文章推荐
- [ ] 标签样式调整
- [ ] 标签页自定义样式（5种）
- [ ] 归档页自定义样式
- [ ] 鼠标样式
- [ ] 主页走马灯（轮播图）
- [ ] 瀑布流相册
- [ ] canvas粒子时钟
- [ ] 豆瓣读书、电影
- [ ] 页面其它的特效
</br>
...


# 安装教程

直接`Download ZIP`解压后，放到`hexo`目录`themes`主题下即可。

或者使用 git命令，进入到本地`hexo`目录：

```shell
git clone https://github.com/leafjame/hexo-theme-next5-leaf.git /themes/leaf
```
将`hexo-theme-next5-leaf`放到**themes**目录下，名字可修改为你自己想要的。

然后在站点的配置文件`_config.yml`中指定所使用的`theme`即可，如：

```js
theme: leaf
```

## 依赖环境

### 插件

本主题中在搭建过程中，参考了其他博客，加了挺多功能，所以也集成了一定的插件，所列部分如下：

```js
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
"hexo-renderer-ejs": "^0.3.1",  // 是不是自带的？。。。
"hexo-renderer-marked": "^1.0.1",  // 是不是自带的？。。。
"hexo-renderer-stylus": "^0.3.3",  // 是不是自带的？。。。
"hexo-symbols-count-time": "^0.6.0",  // 站点字数统计
"hexo-tag-cloud": "^2.1.1",  //标签云
"hexo-tag-dplayer": "^0.3.3",  //dplayer视频插件
"hexo-wordcount": "^6.0.1",  // 字数统计插件
"webpack-cli": "^3.3.7",  // 装exo-abbrlink时提示装的，按需下载
"@webpack-cli/init": "^0.2.2",  // 同上
```
> 所装插件会在站点根目录的`package.json`中列出来，核对一下是不是自己已经装过了。

插件列了这么些，有挺多是非必须的，不一定都得加上，按需加吧，不想用的功能，可以在主题的配置文件中选择关闭。

安装插件命令：

在站点根目录下，例如安装hexo-neat，使用：

```nodejs
npm install --save-dev hexo-neat
```
命令即可，其他插件安装方式类似。默认安装是最新版的插件，如要指定版本号，可以使用：

```nodejs
npm install --save-dev hexo-neat@1.0.4
```

### _config.yml文件

- next主题配置文件

在这里可配置：valine评论系统、leanCloud_visitors、busuanzi_count、tidio在线聊天、hotjar页面反馈功能等等。PS：部分功能需要在相应的网站进行注册。

- hexo站点配置文件

可配置：abbrlink、hexo-neat、Deployment等其它信息。

附上**完整版**站点配置文件，供参考：

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
> 相关文章可参考[我的博客](https://leafjame.github.io)

# 部署

做完以上操作后，使用`hexo`命令，打开博客即可看到效果！

> PS： **使用过程中如发现什么问题，请提issue或者在博客给我反馈哦~由于博客魔改，配置了挺多的东西，现在share的时候，也许有某个地方忘了、或者提供不对的地方，还请谅解！**
