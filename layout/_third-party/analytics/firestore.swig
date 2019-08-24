{% if theme.firestore.enable %}
  <script src="https://www.gstatic.com/firebasejs/4.6.0/firebase.js"></script>
  <script src="https://www.gstatic.com/firebasejs/4.6.0/firebase-firestore.js"></script>
  {% if theme.firestore.bluebird %}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bluebird/3.5.1/bluebird.core.min.js"></script>
  {% endif %}
  <script>
    (function () {

      firebase.initializeApp({
        apiKey: '{{ theme.firestore.apiKey }}',
        projectId: '{{ theme.firestore.projectId }}'
      })

      function getCount(doc, url, increaseCount) {
        //increaseCount will be false when not in article page

        return doc.get().then(function (d) {
          var count
          if (!d.exists) { //has no data, initialize count
            if (increaseCount) {
              doc.set({
                count: 1,
                'url': url
              })
              count = 1
            }
            else {
              count = 0
            }
          }
          else { //has data
            count = d.data().count
            if (increaseCount) {
              if (!(window.localStorage && window.localStorage.getItem(title))) { //if first view this article
                doc.set({ //increase count
                  count: count + 1,
                  'url': url
                })
                count++
              }
            }
          }
          if (window.localStorage && increaseCount) { //mark as visited
            localStorage.setItem(title, true)
          }

          return count
        })
      }

      function appendCountTo(el) {
        return function (count) {
          $(el).append(
            $('<span>').addClass('post-visitors-count').append(
              $('<span>').addClass('post-meta-divider').text('|')
            ).append(
              $('<span>').addClass('post-meta-item-icon').append(
               // $('<i>').addClass('fa fa-users')
                $('<i>').addClass('fa fa-eye')
              )
              ).append($('<span>').text('{{ __("post.visitors")}} ' + count + ' 次'))
          )
        }
      }

      var db = firebase.firestore()
      var articles = db.collection('{{ theme.firestore.collection }}')

      //https://hexo.io/zh-tw/docs/variables.html
      var isPost = '{{ page.title }}'.length > 0
      var isArchive = '{{ archive }}' === 'true'
      var isCategory = '{{ category }}'.length > 0
      var isTag = '{{ tag }}'.length > 0

      var urlPath = '{{ page.path }}';
      var urlFullPath = '{{ page.permalink }}';
      var indexPath = 'index.html'; //首页链接
      var isMenu = false;
      {% for name, path in theme.menu %}
         {# 判断当前链接是否是左侧菜单栏链接 #}
         var menuLink = '{{ url_for(path.split('||')[0]) | trim }}';
         if(urlPath.indexOf(menuLink) > 0 || urlPath == indexPath){
            isMenu = true;
         }
      {% endfor %}

    //  if (isPost) { //is article page
      if (!isMenu) { // 非菜单页、非主页（即在某篇文章链接里）
        var title = '{{ page.title }}'
        var doc = articles.doc(title)

      //  getCount(doc, true).then(appendCountTo($('.post-meta')))
        getCount(doc, urlFullPath, true).then(appendCountTo($('.post-wordcount')))
      }
     // else if (!isArchive && !isCategory && !isTag) { //is index page
      else if (urlPath == indexPath) { // 主页
        var titles = [] //array to titles

        var postsstr = '{% for post in page.posts %}titles.push("{{ post.title }}");{% endfor %}' //if you have a better way to get titles of posts, please change it
        eval(postsstr)

        var promises = titles.map(function (title) {
          return articles.doc(title)
        }).map(function (doc) {
          return getCount(doc)
        })
        Promise.all(promises).then(function (counts) {
          // var metas = $('.post-meta')
          var metas = $('.post-wordcount')
          counts.forEach(function (val, idx) {
            appendCountTo(metas[idx])(val)
          })
        })
      }
    })()
  </script>
{% endif %}
