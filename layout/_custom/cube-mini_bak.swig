
<style>
    .cube_container {
      width: 100px;
      height: 100px;
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
      width: 100%;
      height: 100%;
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
      width: 120px;
      height: 120px;
      display: block;
      margin: 0;
      position: absolute;
    }
    .cube div a {
      color: white;
      font-size: 8em;
      text-decoration: none;
      text-align: center;
      position: fixed;
      top: 50%;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
              transform: translate(-50%, -50%);
    }
    .cube .front {
      -webkit-transform: rotateY(0deg) translateZ(60px);
              transform: rotateY(0deg) translateZ(60px);
      background-color: rgba(0, 191, 255, 0.7);
      border: 2px solid rgba(0, 191, 255, 0.7);
    }
    .cube .back {
      -webkit-transform: rotateX(180deg) translateZ(60px);
              transform: rotateX(180deg) translateZ(60px);
      background-color: rgba(124, 252, 0, 0.7);
      border: 2px solid rgba(124, 252, 0, 0.7);
    }
    .cube .left {
      -webkit-transform: rotateY(-90deg) translateZ(60px);
              transform: rotateY(-90deg) translateZ(60px);
      background-color: rgba(255, 215, 0, 0.7);
      border: 2px solid rgba(255, 215, 0, 0.7);
    }
    .cube .right {
      -webkit-transform: rotateY(90deg) translateZ(60px);
              transform: rotateY(90deg) translateZ(60px);
      background-color: rgba(255, 69, 0, 0.7);
      border: 2px solid rgba(255, 69, 0, 0.7);
    }
    .cube .top {
      -webkit-transform: rotateX(90deg) translateZ(60px);
              transform: rotateX(90deg) translateZ(60px);
      background-color: rgba(255, 0, 157, 0.7);
      border: 2px solid rgba(255, 0, 157, 0.7);
    }
    .cube .bottom {
      -webkit-transform: rotateX(-90deg) translateZ(60px);
              transform: rotateX(-90deg) translateZ(60px);
      background-color: rgba(184, 111, 220, 0.7);
      border: 2px solid rgba(184, 111, 220, 0.7);
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
	    <div class="front"><a href="https://www.liaofuzhan.com" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	    <div class="back"><a href="https://www.liaofuzhan.com" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	    <div class="right"><a href="https://www.liaofuzhan.com" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	    <div class="left"><a href="https://www.liaofuzhan.com" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	    <div class="top"><a href="https://github.com/leafjame/hexo-theme-next5-leaf" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	    <div class="bottom"><a href="https://github.com/leafjame/hexo-theme-next5-leaf" target="_blank" rel="nofollow" style="font-size:28px;">欢迎光临</a></div>
	  </div>
</div>
