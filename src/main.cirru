
var
  React $ require :react

var
  Page $ React.createFactory $ require :./app/page

require :origami-ui
require :../style/main.css

React.render (Page) document.body
