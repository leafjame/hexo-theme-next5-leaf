{% if theme.busuanzi_count.enable %}
<div class="busuanzi-count">
  <!--
  <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
  -->
  <script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

   {% if not theme.footer.diy_visit.enable %}

    {% if theme.busuanzi_count.site_uv %}
      <span class="site-uv">
        {{ theme.busuanzi_count.site_uv_header }}
        <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
        {{ theme.busuanzi_count.site_uv_footer }}
      </span>
    {% endif %}

    {% if theme.busuanzi_count.site_pv %}
      <span class="site-pv">
        {{ theme.busuanzi_count.site_pv_header }}
        <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
        {{ theme.busuanzi_count.site_pv_footer }}
      </span>
    {% endif %}

  {% endif %}

  {# 自定义底部uv pv #}
  {% if theme.footer.diy_visit.enable %}
    {% if theme.busuanzi_count.site_uv %}
      <span class="site-uv">
        {# 使用zh-Hans.yml的文字替换 #}
        {{ __('footer.total_visitors', '<span class="busuanzi-value" id="busuanzi_value_site_uv"></span>') }}
      </span>
    {% endif %}

    {% if theme.busuanzi_count.site_pv %}
      <span class="site-pv">
        {{ __('footer.total_views', '<span class="busuanzi-value" id="busuanzi_value_site_pv"></span>') }}
        <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
      </span>
    {% endif %}
  {% endif %}

</div>
{% endif %}
