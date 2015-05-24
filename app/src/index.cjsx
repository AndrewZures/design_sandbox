require('polyfill-function-prototype-bind')

global.React = require("react")

DashboardPage = require("pages/dashboard.cjsx")
WelcomePage = require("pages/welcome.cjsx")

Hey = React.createClass
  render: ->
    <div>
      <h2>Hey There</h2>
      <ul>
        <li>One</li>
        <li>Two</li>
        <li>Three</li>
      </ul>
    </div>

React.render <Hey />, document.getElementById('some-id')
