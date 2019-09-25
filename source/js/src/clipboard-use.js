/*页面载入完成后，创建复制按钮*/
!function (e, t, a) {
  /* code */
  var initCopyCode = function(){
    var copyHtml = '';
    copyHtml += '<button class="btn-copy" data-clipboard-snippet="">';
    //fa fa-globe可以去字体库替换自己想要的图标
    copyHtml += '  <i class="fa fa-clipboard"></i><span>复制</span>';
    copyHtml += '</button>';
    $(".highlight .code pre").before(copyHtml);
    new ClipboardJS('.btn-copy', {
      target: function(trigger) {
        return trigger.nextElementSibling;
      }
    });
  }
  initCopyCode();
}(window, document);
