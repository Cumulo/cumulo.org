
React = require 'react/addons'
marked = require 'marked'

$ = React.DOM

marked.setOptions
  breaks: yes

module.exports = React.createFactory React.createClass
  displayName: 'app-article'

  propTypes:
    page: React.PropTypes.string

  render: ->

    text = document.getElementById("docs-#{@props.page}").innerHTML

    $.div
      className: 'app-article',
      dangerouslySetInnerHTML:
        __html: marked text
