{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template %}

  {% block title %}{#
  #}{% set page_title_suffix = ' | ' + config.title %}{#

  #}{% if page.type === "categories" and not page.title %}{#
    #}{{ __('title.category') + page_title_suffix }}{#
  #}{% elif page.type === "tags" and not page.title %}{#
    #}{{ __('title.tag') + page_title_suffix }}{#

  <!-- 友情链接-->
  #}{% elif page.type === 'links' and not page.title %}{#
    #}{{ __('title.links') + page_title_suffix }}{#

  #}{% else %}{#
    #}{{ page.title + page_title_suffix }}{#
  #}{% endif %}{#
#}{% endblock %}

{% block page_class %}page-post-detail{% endblock %}

{% block content %}

  <div id="posts" class="posts-expand">
    {##################}
    {### PAGE BLOCK ###}
    {##################}
    <div class="post-block page">
      {% include '_partials/page-header.swig' %}
      {#################}
      {### PAGE BODY ###}
      {#################}
      <div class="post-body{% if theme.han %} han-init-context{% endif %}{% if page.direction && page.direction.toLowerCase() === 'rtl' %} rtl{% endif %}">
        {# tagcloud page support #}
        {% if page.type === "tags" %}
          <div class="tag-cloud">

            <div class="tag-cloud-title">
                {{ _p('counter.tag_cloud', site.tags.length) }}
            </div>

            <div class="tag-cloud-tags">
              {{ tagcloud({min_font: 10, max_font: 15, amount: 300, color: true, start_color: '#ccc', end_color: '#111'}) }}
            </div>
          </div>

          {% if theme.tagcloud.type == 'tagcanvas' %}
               {# hexo-tag-cloud插件球型云标签 #}
               {% include 'tagcanvas.swig' %}
          {% elif theme.tagcloud.type == 'color' %}
               {# 彩色标签页 #}
               {% include 'tag-color.swig' %}
          {% elif theme.tagcloud.type == 'love' %}
               {# 自定义爱心标签云 #}
               {% include 'tag-love.swig' %}
          {% elif theme.tagcloud.type == 'bubble' %}
               {# 自定义球型气泡标签云 #}
               {% include 'tag-bubble.swig' %}
          {% endif %}

        {% elif page.type === 'categories' %}
          <div class="category-all-page">
            <div class="category-all-title">
                {{ _p('counter.categories', site.categories.length) }}
            </div>
            <div class="category-all">
              {{ list_categories() }}
            </div>

            {% if theme.category_style.type == 'love' %}
                 {# 爱心分类页 #}
                 {% include 'category-love.swig' %}
            {% elif theme.category_style.type == 'bubble' %}
                 {# 自定义球型气泡分类页 #}
                 {% include 'category-bubble.swig' %}
            {% endif %}

          </div>

        <!-- 友情链接-->
        {% elif page.type === 'links' %}
            {% include 'links.swig' %}

        {% else %}
          {{ page.content }}
        {% endif %}
      </div>
      {#####################}
      {### END PAGE BODY ###}
      {#####################}
    </div>
    {######################}
    {### END PAGE BLOCK ###}
    {######################}
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}

{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}
