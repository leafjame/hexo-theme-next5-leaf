
<style>
    .cube_container {
      width: 50px;
      height: 60px;
      margin: 0 auto;
      position: fixed;
      z-index: 999;
      -webkit-perspective: 1000px;
              perspective: 1000px;
      right: 0px;
      bottom: 0px;
      -webkit-transform: translate(-50%, -50%);
              transform: translate(-50%, -50%);
    }

    .cube {
      /*
      width: 100%;
      height: 100%;
      */
      width: 0%; /* 大角度旋转 */
      position: absolute;
      -webkit-transform-style: preserve-3d;
      transform-style: preserve-3d;
      -webkit-transform: rotateX(-15deg) rotateY(-20deg) translateZ(-100px);
      transform: rotateX(-15deg) rotateY(-20deg) translateZ(-100px);
      -webkit-transform-origin: center center -100px;
      transform-origin: center center -100px;
      -webkit-animation: around 5s cubic-bezier(0.94, -0.6, 0.45, 1.31) infinite;
      animation: around 5s cubic-bezier(0.94, -0.6, 0.45, 1.31) infinite;
    }
    .cube div {
      width: 50px;
      height: 50px;
      display: block;
      margin: 0;
      position: absolute;
    }
    .cube div a {
      color: white;
      font-size: 12px;
      text-decoration: none;
      text-align: center;
      position: fixed;
      top: 50%;
      left: 45%;
      -webkit-transform: translate(-50%, -50%);
              transform: translate(-50%, -50%);
    }
    .cube .front {
      -webkit-transform: rotateY(0deg) translateZ(25px);
              transform: rotateY(0deg) translateZ(25px);
      background-color: rgba(0, 191, 255, 0.7);
      border: 1px solid rgba(0, 191, 255, 0.7);
    }
    .cube .back {
      -webkit-transform: rotateX(180deg) translateZ(25px);
              transform: rotateX(180deg) translateZ(25px);
      background-color: rgba(124, 252, 0, 0.7);
      border: 1px solid rgba(124, 252, 0, 0.7);
    }
    .cube .left {
      -webkit-transform: rotateY(-90deg) translateZ(25px);
              transform: rotateY(-90deg) translateZ(25px);
      background-color: rgba(255, 215, 0, 0.7);
      border: 1px solid rgba(255, 215, 0, 0.7);
    }
    .cube .right {
      -webkit-transform: rotateY(90deg) translateZ(25px);
              transform: rotateY(90deg) translateZ(25px);
      background-color: rgba(255, 69, 0, 0.7);
      border: 1px solid rgba(255, 69, 0, 0.7);
    }
    .cube .top {
      -webkit-transform: rotateX(90deg) translateZ(25px);
              transform: rotateX(90deg) translateZ(25px);
      background-color: rgba(255, 0, 157, 0.7);
      border: 1px solid rgba(255, 0, 157, 0.7);
    }
    .cube .bottom {
      -webkit-transform: rotateX(-90deg) translateZ(25px);
              transform: rotateX(-90deg) translateZ(25px);
      background-color: rgba(184, 111, 220, 0.7);
      border: 1px solid rgba(184, 111, 220, 0.7);
    }

     @-webkit-keyframes around {
      100% {
        -webkit-transform: rotateX(-15deg) rotateY(-380deg) translateZ(-100px);
                transform: rotateX(-15deg) rotateY(-380deg) translateZ(-100px);
      }
    }

    @keyframes around {
      100% {
        -webkit-transform: rotateX(-15deg) rotateY(-380deg) translateZ(-100px);
        transform: rotateX(-15deg) rotateY(-380deg) translateZ(-100px);
      }
    }
</style>

<div class="cube_container">
	  <div class="cube">
	    <div class="front"><a onclick="back2top()" rel="nofollow"> 欢迎光临 </a></div>
	    <div class="back"><a onclick="back2top()" rel="nofollow"> ❤️ </a></div>
	    <div class="right"><a onclick="back2top()" rel="nofollow"> 北宸小站 </a></div>
	    <div class="left"><a onclick="back2top()" role="button" rel="nofollow"> 请多关照 </a></div>
	    <div class="top"><a href="https://github.com/leafjame/hexo-theme-next5-leaf" target="_blank" rel="nofollow"> ❤️ </a></div>
	    <div class="bottom"><a href="https://github.com/leafjame/hexo-theme-next5-leaf" target="_blank" rel="nofollow"> ❤️ </a></div>
	  </div>
</div>

<script>

  function back2top(){
    $('html, body').animate({scrollTop: 0}, 500);
  }

</script>
