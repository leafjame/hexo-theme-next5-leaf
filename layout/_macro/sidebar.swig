{% macro render(is_post) %}
  <div class="sidebar-toggle">
    <div class="sidebar-toggle-line-wrap">
      <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
    </div>
  </div>

  <aside id="sidebar" class="sidebar">
    {% if theme.sidebar.onmobile %}
      <div id="sidebar-dimmer"></div>
    {% endif %}
    <div class="sidebar-inner">

      {% set display_toc = is_post and theme.toc.enable or is_page and theme.toc.enable %}

      {% if display_toc and toc(page.content).length > 1 %}
        <ul class="sidebar-nav motion-element">
          <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap">
            {{ __('sidebar.toc') }}
          </li>
          <li class="sidebar-nav-overview" data-target="site-overview-wrap">
            {{ __('sidebar.overview') }}
          </li>
        </ul>
      {% endif %}

      <section class="site-overview-wrap sidebar-panel{% if not display_toc or toc(page.content).length <= 1 %} sidebar-panel-active{% endif %}">
        <div class="site-overview">
          <div class="site-author motion-element" itemprop="author" itemscope itemtype="http://schema.org/Person">
            {% if theme.avatar %}
              <a href="/">
              <img class="site-author-image" itemprop="image"
                src="{{ url_for( theme.avatar | default(theme.images + '/avatar.gif') ) }}"
                alt="{{ theme.author }}" />
              </a>
            {% endif %}
              <p class="site-author-name" itemprop="name">{{ theme.author }}</p>
              <p class="site-description motion-element" itemprop="description">{#
            #}{% if theme.seo %}{#
              #}{{ theme.signature }}{#
            #}{% else %}{#
              #}{{ theme.description }}{#
            #}{% endif %}{#
            #}</p>
          </div>

          <nav class="site-state motion-element">

            {% if config.archive_dir != '/' and site.posts.length > 0 %}
              <div class="site-state-item site-state-posts">
              {% if theme.menu.archives %}
                <a href="{{ url_for(theme.menu.archives).split('||')[0] | trim }}">
              {% else %}
                <a href="{{ url_for(config.archive_dir) }}">
              {% endif %}
                  <span class="site-state-item-count">{{ site.posts.length }}</span>
                  <span class="site-state-item-name">{{ __('state.posts') }}</span>
                </a>
              </div>
            {% endif %}

            {% if site.categories.length > 0 %}
              {% set categoriesPageQuery = site.pages.find({type: 'categories'}, {lean: true}) %}
              {% set hasCategoriesPage = categoriesPageQuery.length > 0 %}
              <div class="site-state-item site-state-categories">
                {% if hasCategoriesPage %}<a href="{{ url_for(categoriesPageQuery[0].path) }}">{% endif %}
                  <span class="site-state-item-count">{{ site.categories.length }}</span>
                  <span class="site-state-item-name">{{ __('state.categories') }}</span>
                {% if hasCategoriesPage %}</a>{% endif %}
              </div>
            {% endif %}

            {% if site.tags.length > 0 %}
              {% set tagsPageQuery = site.pages.find({type: 'tags'}, {lean: true}) %}
              {% set hasTagsPage = tagsPageQuery.length > 0 %}
              <div class="site-state-item site-state-tags">
                {% if hasTagsPage %}<a href="{{ url_for(tagsPageQuery[0].path) }}">{% endif %}
                  <span class="site-state-item-count">{{ site.tags.length }}</span>
                  <span class="site-state-item-name">{{ __('state.tags') }}</span>
                {% if hasTagsPage %}</a>{% endif %}
              </div>
            {% endif %}

          </nav>

          {% if theme.rss %}
            <div class="feed-link motion-element">
              <a href="{{ url_for(theme.rss) }}" rel="alternate">
                <i class="fa fa-rss"></i>
                RSS
              </a>
              <!-- 为Hexo Next主题添加哈林摇特效  -->
              {% include 'high.swig' %}
            </div>
          {% endif %}

          {% if theme.social %}
            <div class="links-of-author motion-element">
                {% for name, link in theme.social %}
                  <span class="links-of-author-item">
                    <a rel="external nofollow" href="{{ link.split('||')[0] | trim }}" target="_blank" title="{{ name }}">
                      {% if theme.social_icons.enable %}
                        <i class="fa fa-fw fa-{{ link.split('||')[1] | trim | default('globe') }}"></i>{#
                    #}{% endif %}{#
                      #}{% if not theme.social_icons.icons_only %}{#
                        #}{{ name }}{#
                      #}{% endif %}{#
                  #}</a>
                  </span>
                {% endfor %}
            </div>
          {% endif %}

            <!--
            <div id="music163player">
                <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=1336790004&auto=1&height=66"></iframe>
            </div>
            -->

          {% set cc = {'by': 1, 'by-nc': 1, 'by-nc-nd': 1, 'by-nc-sa': 1, 'by-nd': 1, 'by-sa': 1, 'zero': 1} %}
          {% if theme.creative_commons in cc %}
            <div class="cc-license motion-element" itemprop="license">
              <a href="https://creativecommons.org/{% if theme.creative_commons === 'zero' %}publicdomain/zero/1.0{% else %}licenses/{{ theme.creative_commons }}/4.0{% endif %}/" rel="external nofollow" class="cc-opacity" target="_blank">
                <img src="{{ url_for(theme.images) }}/cc-{{ theme.creative_commons }}.svg" alt="Creative Commons" />
              </a>
            </div>
          {% endif %}

          {# Blogroll #}
          {% if theme.links %}
            <div class="links-of-blogroll motion-element {{ "links-of-blogroll-" + theme.links_layout | default('inline') }}">
              <div class="links-of-blogroll-title">
                <i class="fa  fa-fw fa-{{ theme.links_icon | default('globe') | lower }}"></i>
                {{ theme.links_title }}&nbsp;
                <i class="fa  fa-fw fa-{{ theme.links_icon | default('globe') | lower }}"></i>
              </div>
              <ul class="links-of-blogroll-list">
                {% for name, link in theme.links %}
                  <li class="links-of-blogroll-item">
                    <a href="{{ link }}" title="{{ name }}" rel="external nofollow" target="_blank">{{ name }}</a>
                  </li>
                {% endfor %}
              </ul>
            </div>
          {% endif %}

          <!--近期文章版块 began-->
          {% if theme.recent_posts %}
              <div class="links-of-blogroll motion-element {{ "links-of-blogroll-" + theme.recent_posts_layout  }}">
                <div class="links-of-blogroll-title">
                  <i class="fa fa-history fa-{{ theme.recent_posts_icon | lower }}" aria-hidden="true"></i>
                  {{ theme.recent_posts_title }}
                </div>
                <ul class="links-of-blogroll-list">
                  {% set posts = site.posts.sort('-date') %}
                  {% for post in posts.slice('0', '5') %}
                    <li class='my-links-of-blogroll-li'>
                      <a href="{{ url_for(post.path) }}" title="{{ post.title }}" target="_blank">{{ post.title }}</a>
                    </li>
                  {% endfor %}
                </ul>
              </div>
          {% endif %}
          <!--近期文章版块 end-->

          {% if theme.diy_time.clock.enable %}
              <!-- canvas粒子时钟 -->
              {% include '../_custom/clock.swig' %}
          {% endif %}
          {% if theme.diy_time.runtime.enable %}
              <!-- 网站运行时间 -->
              {% include '../_custom/runtime.swig' %}
          {% endif %}

        </div>
      </section>

      {% if display_toc and toc(page.content).length > 1 %}
      <!--noindex-->
        <section class="post-toc-wrap motion-element sidebar-panel sidebar-panel-active">
          <div class="post-toc">

            {% if page.toc_number === undefined %}
              {% set toc = toc(page.content, { "class": "nav", list_number: theme.toc.number }) %}
            {% else %}
              {% set toc = toc(page.content, { "class": "nav", list_number: page.toc_number }) %}
            {% endif %}

            {% if toc.length <= 1 %}
              <p class="post-toc-empty">{{ __('post.toc_empty') }}</p>
            {% else %}
              <div class="post-toc-content">{{ toc }}</div>
            {% endif %}

          </div>
        </section>
      <!--/noindex-->
      {% endif %}

      {% if theme.sidebar.b2t %}
        <div class="back-to-top">
          <i class="fa fa-arrow-up"></i>
          {% if theme.sidebar.scrollpercent %}
            <span id="scrollpercent"><span>0</span>%</span>
          {% endif %}
        </div>
      {% endif %}

      {% if theme.google_ads.enable and theme.google_ads.sidebar_ads %}
         <!-- 侧边栏谷歌广告 -->
         {% include '../_custom/google_adsense.swig' %}
      {% endif %}

      <!-- 标签云 -->
      <!--
      {% if site.tags.length > 1 %}
      <script type="text/javascript" charset="utf-8" src="/js/tagcloud.js"></script>
      <script type="text/javascript" charset="utf-8" src="/js/tagcanvas.js"></script>
      <div class="widget-wrap">
      <h3 class="widget-title">Tag Cloud</h3>
      <div id="myCanvasContainer" class="widget tagcloud">
          <canvas width="250" height="250" id="resCanvas" style="width=100%">
              {{ list_tags() }}
          </canvas>
      </div>
      </div>
      {% endif %}
      -->
      <!-- 标签云 -->

    </div>
  </aside>
{% endmacro %}
