<style>

  .categorylove {
      width: 500px;
      height: 650px;
      position: relative;
      margin: 60px auto;
  }

  .categorylove a {
      position: absolute;
      left: 0;
      //color: goldenrod;
      //color: #e804048f;
      font-size: 20px;
      font-family: sans-serif;
      text-shadow: 0 0 1em white;
      animation:
          x-move 10s ease-in-out infinite alternate,
          y-move 20s linear infinite;
      animation-delay: calc(30s / var(--particles) * var(--n) * -1);
      user-select: auto; // none
  }

  .categorylove a:first-child {
      color: orangered;
      font-size: 3em;
      text-shadow:
          0 0 0.1em black,
          0 0 1em white;
      z-index: 1;
  }

  @keyframes x-move {
      to {
          left: 450px;
      }
  }

  @keyframes y-move {
      0% { transform: translateY(180px); }
      10% { transform: translateY(45px); }
      15% { transform: translateY(5px); }
      18% { transform: translateY(0); }
      20% { transform: translateY(5px); }
      22% { transform: translateY(35px); }
      24% { transform: translateY(65px); }
      25% { transform: translateY(110px); }
      26% { transform: translateY(65px); }
      28% { transform: translateY(35px); }
      30% { transform: translateY(5px); }
      32% { transform: translateY(0); }
      35% { transform: translateY(5px); }
      40% { transform: translateY(45px); }
      50% { transform: translateY(180px); }
      71% { transform: translateY(430px); }
      72.5% { transform: translateY(440px); }
      75% { transform: translateY(450px); }
      77.5% { transform: translateY(440px); }
      79% { transform: translateY(430px); }
      100% { transform: translateY(180px); }
  }

  /* 移动端样式 */
  @media (max-width: 767px) {
    .categorylove{
        width: 360px;
        height: 450px;
        margin: 30px auto;
    }
    @keyframes x-move {
        to {
            left: 285px;
        }
    }
  }

</style>

<div class="categorylove"></div>

<script type="text/javascript">

      var categories = document.getElementsByClassName('category-all');
     //var categories = document.querySelector('.category-all');

     //隐藏category-all这个div
     categories[0].setAttribute("hidden", "hidden");

     var category = categories[0].getElementsByTagName('a');

     var words = ['❤️'];
     for(var i = 0 ; i < category.length ; i ++){
       // words.push(category[i].innerHTML)
         words.push(category[i]);
         words.push('♠');
     }
     // words.push('💕');

     var dom = {
         love: document.querySelector('.categorylove')
     }

     dom.love.style.setProperty('--particles', words.length)

     words.forEach((word, i) => {

         let atag = document.createElement('a');
         atag.style.setProperty('--n', i + 1);

         atag.style.setProperty('text-decoration', 'none');
         atag.style.setProperty('border-bottom', 'none');

         var r=Math.floor(Math.random()*75+130);
         var g=Math.floor(Math.random()*75+100);
         var b=Math.floor(Math.random()*75+80);
         atag.style.setProperty("color", "rgb("+r+","+g+","+b+")");

         atag.setAttribute("href", word.href);
         atag.innerText = word.innerText;

         if(word.href == undefined){
            atag.setAttribute("href", "#");
            atag.innerText = word;
         }

         dom.love.appendChild(atag);
     })

</script>
