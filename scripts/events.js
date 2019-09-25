// mac Panel效果代码块相关
var exec = require('child_process').exec;

// new 后自动打开编辑器
hexo.on('new', function(data){
  exec('open -a MacDown ' + data.path);
});
