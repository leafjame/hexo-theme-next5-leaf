{% if theme.carousel.enable %}

<!--
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
-->

<script src="https://cdn.jsdelivr.net/npm/jquery@2.1.3/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap.min.js@3.3.5/bootstrap.min.js"></script>

<style type="text/css">

.glyphicon-chevron-left:before{
	/* content: "《" */
}
.glyphicon-chevron-right:before{
	/* content: "》" */
}

.right-siders{
   border-radius: 5px;
   /*margin-top: 5px;
   margin-bottom: 10px;*/
}

.my-carousel{
    /*height: 10%;*/
    margin-bottom: 12px;
}

.my-carousel:hover{
  margin-left: 5px;
  //padding: 5px 1px;
  border-radius: 5px;
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0,0,0,.12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
}

@media (max-width: 767px){
	.rights{
		display: none;
	}
	.carousel{
		width: 100% !important;
		height: 100% !important;
	}
	.slide{
		width: 100% !important;
		height: 100% !important;
	}

	.carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
   /* margin-right: -10px; */
  }

}

.carousel{
	width: 65%;
	height: 100%;
	position: relative;
}

.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  /*width: 5%;*/
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#80000000, endColorstr=#00000000, GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#00000000, endColorstr=#80000000, GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
/*
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
*/

.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  background: url('/images/icon-slides.png');
  background-position-y: -20px;
  left: 9px;
}

/*
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
*/

.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  background: url('/images/icon-slides.png');
  background-position-x: -50px;
  background-position-y: -20px;
  right: 0px;
}

.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}

.carousel-control .icon-prev:before {
  content: 2039;
}
.carousel-control .icon-next:before {
  content: 203a;
}

.carousel-indicators {
  opacity: 0.5;
  position: absolute;
  bottom: -15px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 30px;
  height: 3px;
  margin: 5px;
  text-indent: -999px;
  border: 1px solid #bbb;
  border-radius: 10px;
  cursor: pointer;
  background-color: rgba(0, 0, 0, .24);
}
.carousel-indicators .active {
  width: 30px;
  height: 3px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
   /* margin-right: -10px; */
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: -20px;
  }
}
</style>

<div width="100%" height="24%" style="border: 0px; overflow: hidden; border-radius: 10px; margin-bottom: 25px;" scrolling="no">

	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3500" style="float:left">

      <!-- 轮播（Carousel）指标 -->
      <ol class="carousel-indicators">
      {% set index = 0 %}
      {% for item in theme.carousel.item %}
        <li data-target="#myCarousel" data-slide-to="{{index}}"></li>
        {% set index = index+1 %}
      {% endfor %}
      </ol>

      <!-- 轮播（Carousel）项目 -->
      <div class="carousel-inner" style="height: 24%; border-radius: 10px; width: 100%;">
       {% set act = 0 %}
       {% for item in theme.carousel.item %}
          {% if act===0 %}
          <a class="item active" href="{{ url_for(item.link) }}" target="_blank" style="height: 100%;">
            {# 添加 class="nofancybox" 解决fancybox和图片链接冲突 #}
            <img src="{{item.img}}" class="nofancybox"  style="width: 100%; height: 100%" >
          </a>
          {% set act = 1 %}
          {% elseif act===1 %}
            <a class="item" href="{{ url_for(item.link) }}" target="_blank" style="height: 100%;">
              <img src="{{item.img}}" class="nofancybox"  style="width: 100%; height: 100%;" >
            </a>
        {% endif %}
      {% endfor %}
      </div>

      <!-- 轮播（Carousel）导航 -->
      <a class="left carousel-control" data-target="#myCarousel" href="javascript:void(0);" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      </a>
      <a class="right carousel-control" data-target="#myCarousel" href="javascript:void(0);" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      </a>

	  </div>

	<div  class="rights" style="width: 30%; height: 24%; margin-right: 15px;margin-left: 0px;float: right;">

  	   <!-- 天气插件 -->
  	   <!-- 会有http的链接
       <iframe width="300px" scrolling="no" height="50px" frameborder="0" allowtransparency="true" src="https://i.tianqi.com/index.php?c=code&id=12&color=%23&bdc=%23&icon=1&py=beijing&num=2&site=12"></iframe>
       -->

       <!-- https://tianqi.2345.com/plugin/setting.htm -->
       <!-- <iframe allowtransparency="true" frameborder="0" width="290" height="75" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=2&t=0&v=0&d=2&bd=0&k=000000&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=290&h=75&align=left"></iframe> -->
       <iframe allowtransparency="true" frameborder="0" width="300" height="55" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=1&bd=0&k=000000&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=300&h=55&align=left"></iframe>

  	   <!-- 热门排行 -->
  	   <div class="my-carousel">
         <a href="https://www.liaofuzhan.com/top/" target="_blank">
            <img class="right-siders nofancybox" src="/images/hot.png" width="100%"/>
         </a>
  	   </div>

  	   <!-- 时光留影 -->
  	   <div class="my-carousel">
         <a href="https://www.liaofuzhan.com/photos/" target="_blank">
           <img class="right-siders nofancybox" src="/images/time.png"/>
         </a>
  	   </div>

  	  <!-- 推荐阅读 -->
  	  <div class="my-carousel">
        <a href="https://www.liaofuzhan.com/books/" target="_blank">
          <img class="right-siders nofancybox" src="/images/read.png"/>
        </a>
  	  </div>

      <!-- 订阅本站 -->
      <div class="my-carousel">
        <a href="https://mailchi.mp/e92415d27722/leaf" target="_blank">
          <img class="right-siders nofancybox" src="/images/subscribe.png"/>
        </a>
     </div>

   </div>

</div>

{% endif %}
