<script>
  if (document.querySelector("halo-comment")) {
    let comment_box = document.querySelector("halo-comment").shadowRoot.querySelector("#halo-comment")

    if (document.cookie.indexOf("night=true") !== -1) {
      comment_box.classList.remove("light")
      comment_box.classList.add("dark")
    }
    else {
      comment_box.classList.remove("dark")
      comment_box.classList.add("light")
    }
  };
</script>
<footer>
  <style>
    .mdui-img-circle {
      border-radius: 50%;
    }
  </style>
  <div class="buttons">
    <a class="to-top" href="#"></a>
  </div>
  <div class="wrap min">
    <section class="sub-footer">
      <div align="center">
        <img class="mdui-img-circle" height="24" width="24" src="${blog_logo!}">
        <a>${blog_title!}</a>

        <!-- 自定义页脚 -->
        <div>
          <a href="/categories">分类汇总</a>
          ⚡️
          <a href="/tags">标签</a>
          ⚡️
          <a href="/archives">归档</a>
          ⚡️
          <a href="/links">友情链接</a>
        </div>

        <div>
          <a href="/journals">日志</a>
          ⚔️
          <a href="/s/about">关于我</a>
          ⚔️
          <a href="/atom.xml">RSS</a>
          ⚔️
          <a href="/photos">图库</a>
        </div>

        <div>
          <a href="/sitemap.xml">网站地图(xml)</a>
          👈👉
          <a href="/sitemap.html">网站地图(html)</a>
        </div>

        <!-- 自定义页脚 -->
        <div>© <span id="timeyear">${.now?string('yyyy')}</span> ${user.nickname!} <a href="https://beian.miit.gov.cn/"
            target="_blank">${settings.icp!}</a></div>
      </div>

    </section>
  </div>
</footer>

<script src="${theme_base!}/source/js/kico.js?v=${theme.version!}"></script>
<script src="${theme_base!}/source/js/hingle.js?v=${theme.version!}"></script>
<script>
  let config = JSON.stringify({ night: ${ settings.night ? c}, copyright: ${ settings.copyright ? c}});
  var hingle = new Paul_Hingle(config);
</script>
