
React = require 'react/addons'

AppArticle = require './article'

$ = React.DOM
cx = React.addons.classSet

module.exports = React.createFactory React.createClass
  displayName: 'app-layout'

  propTypes:
    scrollTop: React.PropTypes.number

  getInitialState: ->
    page: 'home'

  onHomeClick: ->
    @setState page: 'home'

  onArchClick: ->
    @setState page: 'arch'

  onUsageClick: ->
    @setState page: 'usage'

  renderNavs: ->
    $.div className: 'nav',
      $.a
        onClick: @onHomeClick
        className: cx
          'page': yes
          'is-selected': @state.page is 'home'
        'Home'
      $.a
        onClick: @onArchClick
        className: cx
          'page': yes
          'is-selected': @state.page is 'arch'
        'Architechture'
      $.a
        onClick: @onUsageClick
        className: cx
          'page': yes
          'is-selected': @state.page is 'usage'
        'Usage'

  render: ->

    ratio = (Math.min @props.scrollTop, 400) / 400
    headerStyle =
      height: "#{800 - (700 * ratio)}px"
      fontSize: "#{400 - (360 * ratio)}px"
      backgroundColor: "hsla(0,0%,0%,#{ratio * 0.9})"

    $.div className: 'app-layout',
      $.div className: 'header', style: headerStyle,
        $.span className: 'logo', 'Cumulo'
        if ratio > 0.6
          @renderNavs()
      $.div className: 'body',
        AppArticle page: @state.page