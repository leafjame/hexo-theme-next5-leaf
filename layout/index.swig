{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}
<!--
  {% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}
  {% block title %} {{ config.title }} - {{ theme.description }} {% endblock %}
  <!-- 做seo优化，把关键词也显示在title标题里 -->
  {% block title %} {{ theme.keywords }} - {{ config.title }}{{ theme.description }} {% endblock %}
-->
  {% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}

{% block page_class %}
  {% if is_home() %}page-home{% endif -%}
{% endblock %}

{% block content %}

  <!--轮播图-->
  {% include '_macro/carousel.swig' %}

  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
