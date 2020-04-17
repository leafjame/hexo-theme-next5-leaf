
{# 鼠标点击特效 #}
{% if theme.cursor_effect %}
  {% if theme.cursor_effect.type == "fireworks" %}
    <script async src="/js/cursor/fireworks.js"></script>
  {% elseif theme.cursor_effect.type == "explosion" %}
    <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas>
    <script async src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
    <script async src="/js/cursor/explosion.min.js"></script>
  {% elseif theme.cursor_effect.type == "love" %}
    <script async src="/js/cursor/love.min.js"></script>
  {% elseif theme.cursor_effect.type == "text" %}
    <script async src="/js/cursor/text.js"></script>
  {% endif %}
{% endif %}

{# Tidio 在线联系功能 #}
{% if theme.tidio.enable %}
  {# 为避免代码加载阻塞页面渲染，需要为脚本添加async属性使其异步加载 #}
  <script async src="//code.tidio.co/{{ theme.tidio.key }}.js"></script>
{% endif %}

{# hotjar 页面反馈 #}
{% if theme.hotjar.enable %}
  <!-- Hotjar Tracking Code for https://www.liaofuzhan.com -->
  <script async>
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


{# 网站底部运行时间 #}
{% if theme.footer.runtime.enable %}

  <script async language="javascript">

    var div = document.createElement("div");
    //插入到自定义的theme-info或者copyright之后
    var copyright = document.querySelector(".theme-info2") || document.querySelector(".copyright");

    function show_run_time(){
        window.setTimeout("show_run_time()", 1000);
      // BirthDay=new Date("08/07/2019 20:00:00");
        BirthDay=new Date("{{ theme.footer.runtime.birthday }}");
        today=new Date();
        timeold=(today.getTime()-BirthDay.getTime());
        sectimeold=timeold/1000
        secondsold=Math.floor(sectimeold);
        msPerDay=24*60*60*1000
        e_daysold=timeold/msPerDay
        daysold=Math.floor(e_daysold);
        e_hrsold=(e_daysold-daysold)*24;
        hrsold=setzero(Math.floor(e_hrsold));
        e_minsold=(e_hrsold-hrsold)*60;
        minsold=setzero(Math.floor((e_hrsold-hrsold)*60));
        seconds=setzero(Math.floor((e_minsold-minsold)*60));

        // 使用zh-Hans.yml的文字替换
        div.innerHTML = "{{ __('footer.wait')}} " + "<span style='color: {{ theme.footer.runtime.color }}'> " + daysold + " </span> 天 <span style='color: {{ theme.footer.runtime.color }}'>" + hrsold + " </span>时 <span style='color: {{ theme.footer.runtime.color }}'>" + minsold + " </span>分 <span style='color: {{ theme.footer.runtime.color }}'>" + seconds + " </span>秒 ";

        document.querySelector(".footer-inner").insertBefore(div, copyright.nextSibling);

    }
    function setzero(i){
        if (i<10)
        {i="0" + i};
        return i;
    }

    show_run_time();

  </script>

{% endif %}


<!-- 旋转魔方 -->
{% if theme.cube.enable %}
   {% if theme.cube.type == "mini" %}
      {% include 'cube-mini.swig' %}
   {% elseif theme.cube.type == "hollow" %}
      {% include 'cube-hollow.swig' %}
   {% endif %}
{% endif %}

<!-- Console 输出第三方个性化字体 -->
{% if theme.fig_font.enable %}
  <script async type="text/javascript" src="{{ url_for('/figlet/fetch.min.js') }}"></script>
  <script type="text/javascript" src="{{ url_for('/figlet/figlet.js') }}"></script>
  <script type="text/javascript">

      figlet.defaults({fontPath: "/figlet/fonts"});
      figlet("{{ theme.fig_font.input_text }}", "{{ theme.fig_font.font }}", function(err, text) {
          if (err) {
              console.log("something went wrong...");
              console.dir(err);
              return;
          }
          console.log(text);
      });
  </script>
{% endif %}

  <!-- Console 输出自定义字体 -->
  {% if theme.diy_font.enable %}
    <script async type="text/javascript">
        var text = "{{ theme.diy_font.input_text }}";
        var date = '{{date(Date.now(), 'YYYY-MM-DD')}}';
        console.log("%c " + text, "font-size:100px;color:white;border-radius:20px;height:200px; background:-webkit-linear-gradient(yellow,orange,red,green,blue,purple);text-shadow: 0 1px 0 #ccc,0 2px 0 #c9c9c9,0 3px 0 #bbb,0 4px 0 #b9b9b9,0 5px 0 #aaa,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);");
        console.info('\n' + ' %c Leafae Site %c https://www.liaofuzhan.com ' + '\n', 'color: #fadfa3; background: #030307; padding:5px 0;', 'background: #fadfa3; padding:5px 0;');
        console.info('\n' + ' %c Leafae QQ %c 793458585 ' + '\n', 'color: #fadfa3; background: #030307; padding:5px 0;', 'background: #fadfa3; padding:5px 0;');
        console.info('\n' + ' %c Leafae Wechat %c leaface ' + '\n', 'color: #fadfa3; background: #030307; padding:5px 0;', 'background: #fadfa3; padding:5px 0;');
       // console.log("%c Time: " + date, "font-size:100px;white:"+fcolor+";border-radius:20px;height:200px; background:-webkit-linear-gradient(yellow,orange,red,green,blue,purple);text-shadow: 0 1px 0 #ccc,0 2px 0 #c9c9c9,0 3px 0 #bbb,0 4px 0 #b9b9b9,0 5px 0 #aaa,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);  background-image: linear-gradient(to right, orangered, orange, gold, lightgreen, cyan, dodgerblue, mediumpurple, hotpink, orangered);");
       // console.log("%c .", "padding:300px 600px;line-height:10px;background:url(https://s2.ax1x.com/2019/10/17/KkoAJJ.md.png) no-repeat;");
    </script>
  {% endif %}
