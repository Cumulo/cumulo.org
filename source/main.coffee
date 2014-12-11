
React = require 'react/addons'

AppLayout = require './app/layout'


render = ->
  component = AppLayout
    scrollTop: window.scrollY
  React.render component, document.body

window.addEventListener 'scroll', render

render()