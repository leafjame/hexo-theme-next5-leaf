{% if theme.valine.enable and theme.valine.appid and theme.valine.appkey %}
  <script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
  <script src="/js/src/Valine.min.js"></script>

  <!-- https://deserts.io/diy-a-comment-system/ -->
  <script type="text/javascript">
    new Valine({
        lang: 'zh-cn',
        admin_email: 'xxxxxxxxx@qq.com', //博主邮箱
        el: '#comments' ,
        appId: '{{ theme.valine.appid }}',
        appKey: '{{ theme.valine.appkey }}',
        emoticon_url: 'https://cdn.jsdelivr.net/gh/leafjame/cdn/emoji',
       // emoticon_list: ["吐.png","喷血.png","狂汗.png","不说话.png","汗.png","坐等.png","献花.png","不高兴.png","中刀.png","害羞.png","皱眉.png","小眼睛.png","中指.png","尴尬.png","瞅你.png","想一想.png","中枪.png","得意.png","肿包.png","扇耳光.png","亲亲.png","惊喜.png","脸红.png","无所谓.png","便便.png","愤怒.png","蜡烛.png","献黄瓜.png","内伤.png","投降.png","观察.png","看不见.png","击掌.png","抠鼻.png","邪恶.png","看热闹.png","口水.png","抽烟.png","锁眉.png","装大款.png","吐舌.png","无奈.png","长草.png","赞一个.png","呲牙.png","无语.png","阴暗.png","不出所料.png","咽气.png","期待.png","高兴.png","吐血倒地.png","哭泣.png","欢呼.png","黑线.png","喜极而泣.png","喷水.png","深思.png","鼓掌.png","暗地观察.png"],
        emoticon_list: ["大佬.gif","点赞.gif","尴尬.gif","鼓掌.gif","笑哭.gif","害羞.gif","黑人问号.gif","坏笑.gif","惊吓.gif","可爱.gif","抠鼻子.gif","流汗.gif","色.gif","吐血.gif","无奈.gif","huaji.png","liuhanhuaji.png","mojinghuaji.png","coshuaji.png","shounuehuaji.png","jizhi.png","doge.png","chigua.png","motion_1016.png","motion_1012.png","motion_1017.png","f_hufen.png","f_geili.png","f_jiong.png","f_meng.png","f_shenma.png","f_v5.png","c_onef.png","c_onem.png","c_fivem.png","c_oney.png","c_teny.png","c_oy.png","1f60a.png","1f60b.png","1f60d.png","1f60e.png","1f61a.png","1f62d.png","1f601.png","1f602.png","1f605.png","1f606.png","1f607.png","1f618.png","1f630.png","1f631.png","1f632.png","1f633.png","1f63e.png","1f63f.png","1f638.png","1f639.png","zhayanjian.gif","ciya.gif","xieyanxiao.gif","huaixiao.gif","xiaoku.gif","leiben.gif","penxue.gif","hanxiao.gif","baiyan.gif","cahan.gif","fadai.gif","haixiu.gif","haqian.gif","ku.gif","liuhan.gif","OK.gif","qiang.gif","woshou.gif","baoquan.gif","qiudale.gif","se.gif","yinxian.gif","yun.gif","zaijian.gif"],
        placeholder: '{{ theme.valine.placeholder }}',
  });

  <!--点击邮件中的链接跳转至相应评论-->
  if(window.location.hash){
      var checkExist = setInterval(function() {
         if ($(window.location.hash).length) {
            $('html, body').animate({scrollTop: $(window.location.hash).offset().top-90}, 1000);
            clearInterval(checkExist);
         }
      }, 100);
   }

  </script>
{% endif %}
