{% macro render(post) %}

  <article class="my-post post-type-{{ post.type | default('normal') }}" itemscope itemtype="http://schema.org/Article">
    <header class="my-post-header">

      <div class="my-post-meta">
        <time class="my-post-time" itemprop="dateCreated"
              datetime="{{ moment(post.date).format() }}"
              content="{{ date(post.date, config.date_format) }}" >
          {{ date(post.date, 'MM-DD') }}
        </time>
      </div>

      <{% if theme.seo %}h3{% else %}h2{% endif %} class="my-post-title">
        {% if post.link %}{# Link posts #}
          <a class="my-post-title-link post-title-link-external" target="_blank" href="{{ url_for(post.link) }}" itemprop="url">
            {{ post.title or post.link }}
            <i class="fa fa-external-link"></i>
          </a>
        {% else %}
            <a class="my-post-title-link" href="{{ url_for(post.path) }}" itemprop="url">
              {% if post.type === 'picture' %}
                {{ post.content }}
              {% else %}
                <span itemprop="name">{{ post.title | default(__('post.untitled')) }}</span>
              {% endif %}
            </a>
        {% endif %}
      </{% if theme.seo %}h3{% else %}h2{% endif %}>

    </header>
  </article>

{% endmacro %}
