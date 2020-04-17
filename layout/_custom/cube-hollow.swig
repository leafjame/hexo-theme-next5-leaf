
<style>
  /*最外层容器样式*/
  .wrap {
    width: 0px;
    height: 0px;
    /*margin: 80px;*/
    /*position: relative;*/
    position: fixed;
    bottom: 120px;
    right: 80px;
    z-index: 999;
  }

  /*包裹所有容器样式*/
  .cube {
    width: 0px;
    height: 0px;
    margin: 0 auto;
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
    transform: rotateX(-30deg) rotateY(-80deg);
    animation: rotate linear 10s infinite;
  }

  @-webkit-keyframes rotate {
    from {
      transform: rotateX(0deg) rotateY(0deg);
    }
    to {
      transform: rotateX(360deg) rotateY(360deg);
    }
  }

  .cube div {
    position: absolute;
    width: 50px;
    height: 50px;
    opacity: 0.8;
    transition: all .4s;
  }

  /*定义所有图片样式*/
  .pic {
    width: 50px;
    height: 50px;
  }

  .cube .out_front {
    transform: rotateY(0deg) translateZ(25px);
  }

  .cube .out_back {
    transform: translateZ(-25px) rotateY(180deg);
  }

  .cube .out_left {
    transform: rotateY(-90deg) translateZ(25px);
  }

  .cube .out_right {
    transform: rotateY(90deg) translateZ(25px);
  }

  .cube .out_top {
    transform: rotateX(90deg) translateZ(25px);
  }

  .cube .out_bottom {
    transform: rotateX(-90deg) translateZ(25px);
  }

  /*定义小正方体样式*/
  .cube span {
    display: block;
    width: 25px;
    height: 25px;
    position: absolute;
    top: 12px;
    left: 12px;
  }

  .cube .in_pic {
    width: 25px;
    height:25px;
  }

  .cube .in_front {
    transform: rotateY(0deg) translateZ(12px);
  }

  .cube .in_back {
    transform: translateZ(-12px) rotateY(180deg);
  }

  .cube .in_left {
    transform: rotateY(-90deg) translateZ(12px);
  }

  .cube .in_right {
    transform: rotateY(90deg) translateZ(12px);
  }

  .cube .in_top {
    transform: rotateX(90deg) translateZ(12px);
  }

  .cube .in_bottom {
    transform: rotateX(-90deg) translateZ(12px);
  }

  /*鼠标移入后样式*/
  .cube:hover .out_front {
    transform: rotateY(0deg) translateZ(50px);
  }

  .cube:hover .out_back {
    transform: translateZ(-50px) rotateY(180deg);
  }

  .cube:hover .out_left {
    transform: rotateY(-90deg) translateZ(50px);
  }

  .cube:hover .out_right {
    transform: rotateY(90deg) translateZ(50px);
  }

  .cube:hover .out_top {
    transform: rotateX(90deg) translateZ(50px);
  }

  .cube:hover .out_bottom {
    transform: rotateX(-90deg) translateZ(50px);
  }
</style>

<div class="wrap">

		<!--包裹所有元素的容器-->
		<div class="cube">
			<!--前面图片 -->
			<div class="out_front">
			  <a onclick="back2top()">
				  <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
				</a>
			</div>
			<!--后面图片 -->
			<div class="out_back">
				<a onclick="back2top()">
          <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
        </a>
			</div>
			<!--左面图片 -->
			<div class="out_left">
        <a onclick="back2top()">
				  <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
				</a>
			</div>
			<!--右面图片 -->
			<div class="out_right">
				<a onclick="back2top()">
          <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
        </a>
			</div>
			<!--上面图片 -->
			<div class="out_top">
				<a onclick="back2top()">
          <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
        </a>
			</div>
			<!--下面图片 -->
			<div class="out_bottom">
				<a onclick="back2top()">
          <img src="https://s2.ax1x.com/2019/10/14/KpEBJx.th.jpg" class="pic" />
        </a>
			</div>

			<!--小正方体 -->
			<span class="in_front">
				<img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
			<span class="in_back">
			     <img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
			<span class="in_left">
				<img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
			<span class="in_right">
				<img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
			<span class="in_top">
				<img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
			<span class="in_bottom">
				<img src="https://s2.ax1x.com/2019/10/14/KptCPf.th.jpg" class="in_pic" />
			</span>
		</div>

</div>

<script>
  function back2top(){
    $('html, body').animate({scrollTop: 0}, 500);
  }
</script>
