
var
  React $ require :react
  docIndex $ require :../../docs/index.md
  docAbout $ require :../../docs/about.md

var mdOptions $ {}
  :breaks true
  :gfm true

var
  div $ React.createFactory :div
  Remarkable $ React.createFactory $ require :react-remarkable

= module.exports $ React.createClass $ {}
  :displayName :app-page

  :render $ \ ()
    div ({} (:className :app-page))
      div ({} (:className ":app-project line"))
        div ({} (:className :app-logo))
        div ({} (:className :app-name)) ":Cumulo Architecture"
      div ({} (:className ":app-about line"))
        Remarkable $ {} (:options mdOptions) (:source docAbout)
      div ({} (:className ":app-body"))
        Remarkable $ {} (:options mdOptions) (:source docIndex)
      div ({} (:className :app-footer))
        , :浙ICP备14043687
