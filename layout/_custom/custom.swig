
{# 鼠标点击特效 #}
{% if theme.cursor_effect %}
  {% if theme.cursor_effect.type == "fireworks" %}
    <script src="/js/cursor/fireworks.js"></script>
  {% elseif theme.cursor_effect.type == "explosion" %}
    <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas>
    <script src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
    <script src="/js/cursor/explosion.min.js"></script>
  {% elseif theme.cursor_effect.type == "love" %}
    <script src="/js/cursor/love.min.js"></script>
  {% elseif theme.cursor_effect.type == "text" %}
    <script src="/js/cursor/text.js"></script>
  {% endif %}
{% endif %}

{# Tidio 在线联系功能 #}
{% if theme.tidio.enable %}
  {# 为避免代码加载阻塞页面渲染，需要为脚本添加async属性使其异步加载 #}
  <script async src="//code.tidio.co/{{ theme.tidio.key }}.js"></script>
{% endif %}

{# hotjar 页面反馈 #}
{% if theme.hotjar.enable %}
  <!-- Hotjar Tracking Code for https://leafjame.github.io -->
  <script>
      (function(h,o,t,j,a,r){
          h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
          h._hjSettings={hjid:{{ theme.hotjar.siteID }},hjsv:6};
          a=o.getElementsByTagName('head')[0];
          r=o.createElement('script');r.async=1;
          r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
          a.appendChild(r);
      })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
  </script>
{% endif %}

{# 打字特效 #}
{% if theme.typing_effect %}
  <script src="/js/src/activate-power-mode.min.js"></script>
  <script>
    POWERMODE.colorful = {{ theme.typing_effect.colorful }};
    POWERMODE.shake = {{ theme.typing_effect.shake }};
    document.body.addEventListener('input', POWERMODE);
  </script>
{% endif %}
