
var
  stir $ require :stir-template
  React $ require :react
  ({}~ html head title meta link script body div) stir

var
  Page $ React.createFactory $ require :./src/app/page

= module.exports $ \ (data)

  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":Cumulo Architecture"
        meta $ {} (:charset :utf-8)
        link $ {} (:rel :icon)
          :href :http://repo/Cumulo/logo/cumulo.png
        link $ {} (:rel :stylesheet)
          :href data.style
        script $ {} (:src data.vendor) (:defer true)
        script $ {} (:src data.main) (:defer true)
      body null
        React.renderToString (Page)
