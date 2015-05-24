require('polyfill-function-prototype-bind')

global.React = require("react")

DashboardPage = require("pages/dashboard.cjsx")
WelcomePage = require("pages/welcome.cjsx")

Main = React.createClass
  render: ->
    <div>
      <WelcomePage />
    </div>

React.render <Main />, document.getElementById('some-id')
