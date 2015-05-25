require('polyfill-function-prototype-bind')

global.React = require("react")

DashboardPage = require("pages/dashboard.cjsx")
WelcomePage = require("pages/welcome.cjsx")
Toolbar = require("pages/toolbar.cjsx")
Content = require("pages/content.cjsx")

Main = React.createClass
  render: ->
    <div >
      <Toolbar />
      <Content />
    </div>

React.render <Main />, document.getElementById('some-id')
