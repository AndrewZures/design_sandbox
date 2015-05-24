require('polyfill-function-prototype-bind')

global.React = require("react")

DashboardPage = require("pages/dashboard.cjsx")
WelcomePage = require("pages/welcome.cjsx")

Hey = React.createClass
  render: ->
    <h2>Hey There</h2>

React.render <Hey />, document.getElementById('some-id')
