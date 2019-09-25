<div class="tags" id="myTags" style="margin-left:300px">
  <canvas width="350" height="350" id="my3DTags">
    <p>Anything in here will be replaced on browsers that support the canvas element</p>
  </canvas>
</div>
<div class="tags" id="tags">
  <ul style="display: none">
    {{ tagcloud({
      min_font: 16,
      max_font: 35,
      amount: 999,
      color: true,
      start_color: 'red',
      end_color: 'red',
    }) }}
  </ul>
</div>
<script type="text/javascript" src="{{ url_for('/js/tagcanvas.js') }}"></script>
<script type="text/javascript" >

  var alltags = document.getElementsByClassName('tag-cloud-tags');
  //隐藏tag-cloud-tags这个div
  alltags[0].setAttribute("hidden", "hidden");

  window.onload = function() {
    try {
      TagCanvas.Start('my3DTags','tags',{
        textFont: 'Georgia,Optima',
        textColour: null,
        outlineColour: 'black',
        weight: true,
        reverse: true,
        depth: 0.8,
        maxSpeed: 0.05,
        bgRadius: 1,
        freezeDecel: true
      });
    } catch(e) {
      // something went wrong, hide the canvas container
      document.getElementById('myTags').style.display = 'none';
    }
  };
</script>
