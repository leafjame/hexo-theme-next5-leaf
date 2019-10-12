<style>
  .wrapper {
    margin: 0 auto;
    padding:0;
    width: 700px;
    min-width: 100px;
  }
  .categorybubble {
    position: relative;
    margin-top: 260px;
  }
  .categorybubble a {
    display: block;
    border-radius: 50%;
    color: #fff;
    font-weight: bold;
    font-size: 14px;
    text-decoration: none;
    text-align: center;
  }

  .b0{
      width: 95px;
      height: 95px;
      line-height: 95px;
  }
  .b1{
      width: 70px;
      height: 70px;
      line-height: 70px;
  }
  .b2{
      width: 60px;
      height: 60px;
      line-height: 60px;
  }
  .b3{
      width: 45px;
      height: 45px;
      line-height: 45px;
  }

  .c0{
      background: -moz-linear-gradient(top, #d1e5fd 0%, #3d86f4 100%);
      background: -webkit-linear-gradient(top, #d1e5fd 0%,#3d86f4 100%);
      background: -o-linear-gradient(top, #d1e5fd 0%,#3d86f4 100%);
      background: -ms-linear-gradient(top, #d1e5fd 0%,#3d86f4 100%);
      background: linear-gradient(to bottom, #d1e5fd 0%,#3d86f4 100%);
  }
  .c1{
      background: -moz-linear-gradient(top, #b9f8ff 0%, #1de7ff 100%);
      background: -webkit-linear-gradient(top, #b9f8ff 0%,#1de7ff 100%);
      background: -o-linear-gradient(top, #b9f8ff 0%,#1de7ff 100%);
      background: -ms-linear-gradient(top, #b9f8ff 0%,#1de7ff 100%);
      background: linear-gradient(to bottom, #b9f8ff 0%,#1de7ff 100%);
  }
  .c2{
      background: -moz-linear-gradient(top, #fff4e2 0%, #ffd79c 100%);
      background: -webkit-linear-gradient(top, #fff4e2 0%,#ffd79c 100%);
      background: -o-linear-gradient(top, #fff4e2 0%,#ffd79c 100%);
      background: -ms-linear-gradient(top, #fff4e2 0%,#ffd79c 100%);
      background: linear-gradient(to bottom, #fff4e2 0%,#ffd79c 100%);
  }
  .c3{
      background: -moz-linear-gradient(top, #fef4fa 0%, #fbbae0 100%);
      background: -webkit-linear-gradient(top, #fef4fa 0%,#fbbae0 100%);
      background: -o-linear-gradient(top, #fef4fa 0%,#fbbae0 100%);
      background: -ms-linear-gradient(top, #fef4fa 0%,#fbbae0 100%);
      background: linear-gradient(to bottom, #fef4fa 0%,#fbbae0 100%);
  }
  .c4{
      background: -moz-linear-gradient(top, #fedc90 0%, #ffb515 100%);
      background: -webkit-linear-gradient(top, #fedc90 0%,#ffb515 100%);
      background: -o-linear-gradient(top, #fedc90 0%,#ffb515 100%);
      background: -ms-linear-gradient(top, #fedc90 0%,#ffb515 100%);
      background: linear-gradient(to bottom, #fedc90 0%,#ffb515 100%);
  }
  .c5{
      background: -moz-linear-gradient(top, #bcf7ca 0%, #1fda4b 100%);
      background: -webkit-linear-gradient(top, #bcf7ca 0%,#1fda4b 100%);
      background: -o-linear-gradient(top, #bcf7ca 0%,#1fda4b 100%);
      background: -ms-linear-gradient(top, #bcf7ca 0%,#1fda4b 100%);
      background: linear-gradient(to bottom, #bcf7ca 0%,#1fda4b 100%);
  }
  .c6{
      background: -moz-linear-gradient(top, #f7cdf8 0%, #db43e7 100%);
      background: -webkit-linear-gradient(top, #f7cdf8 0%,#db43e7 100%);
      background: -o-linear-gradient(top, #f7cdf8 0%,#db43e7 100%);
      background: -ms-linear-gradient(top, #f7cdf8 0%,#db43e7 100%);
      background: linear-gradient(to bottom, #f7cdf8 0%,#db43e7 100%);
  }

  /* 移动端样式 */
  @media (max-width: 767px){
    .wrapper {
        width: 10px;
        margin-left:20px;
        min-width: 0px;
    }
    .categorybubble{
        width: 300px;
        min-width: 0px;
        margin-top: 175px;
        margin-left: 10px;
    }
    .categorybubble a {
      font-size: 13px;
    }
    .b0{
        width: 65px;
        height: 65px;
        line-height: 60px;
    }
    .b1{
        width: 50px;
        height: 50px;
        line-height: 45px;
    }
    .b2{
        width: 40px;
        height: 40px;
        line-height: 40px;
    }
    .b3{
        width: 35px;
        height: 35px;
        line-height: 35px;
    }
  }

</style>

<div class="wrapper">
    <div class="categorybubble">

    </div>
</div>
<script type="text/javascript">

     var categories = document.getElementsByClassName('category-all');

     //隐藏category-all这个div
     categories[0].setAttribute("hidden", "hidden");

     var category = categories[0].getElementsByTagName('a');

     var bo = new Array();
     var co = new Array();
     for(var i=0;i<4;i++){
        bo.push("b" + i);
     }
     for(var i=0;i<7;i++){
        co.push("c" + i);
     }

     var divDom = document.querySelector('.categorybubble')
     //var divDom = document.getElementsByClassName('categorybubble')[0];
     for(var i=0;i<category.length;i++){
        var atag = document.createElement('a');
        var boStyle = bo[Math.floor(Math.random()*4)];
        var coStyle = co[Math.floor(Math.random()*7)];
        if(category[i].innerText.length > 10){
            boStyle = "b0";
        }else if(category[i].innerText.length > 5 && category[i].innerText.length < 10){
            boStyle = "b1";
        }
        atag.setAttribute("class", boStyle+" "+coStyle);
        atag.setAttribute("href", category[i].href);
        atag.innerText = category[i].innerText;
        divDom.appendChild(atag);
    }

    function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            //移动端页面
            return 80;
        } else {
            //pc端页面
            return 140;
        }
    }

    var tagRadius = browserRedirect();

    /*3D标签云*/
    tagcloud({
        selector: ".categorybubble",   //元素选择器
        fontsize: 14,             //基本字体大小, 单位px
        radius: tagRadius,        //滚动半径, 单位px 页面宽度和高度的五分之一
        mspeed: "slow",           //滚动最大速度, 取值: slow, normal(默认), fast
        ispeed: "slow",           //滚动初速度, 取值: slow, normal(默认), fast
        direction: 135,           //初始滚动方向, 取值角度(顺时针360): 0对应top, 90对应left, 135对应right-bottom(默认)...
        keep: false               //鼠标移出组件后是否继续随鼠标滚动, 取值: false, true(默认) 对应 减速至初速度滚动, 随鼠标滚动
    });
</script>
