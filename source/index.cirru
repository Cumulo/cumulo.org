doctype

html
  head
    title "Cumulo Data Store"
    meta (:charset utf-8)
    meta (:name keyword)
      :content "A Flux style tiny store for JavaScript based apps"
    link (:rel icon) (:type image/png) (:href ./images/icon.png)
    script(:src build/vendor.min.js)
    script#docs-home (:type markdown)
      @insert ../docs/home.md
    script#docs-arch (:type markdown)
      @insert ../docs/arch.md
    script#docs-usage (:type markdown)
      @insert ../docs/usage.md
    @if (@ dev)
      @block
        link (:rel stylesheet) (:href source/main.css)
        script (:defer) (:src build/main.js)
      @block
        link (:rel stylesheet) (:href build/main.min.css)
        script (:defer) (:src build/main.min.js)
  body (:lang zh-cn)
