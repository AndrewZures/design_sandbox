require('polyfill-function-prototype-bind')

require('base.scss')

global.React   = require("react")
Router  = require("react-router")

Link    = Router.Link
Route   = Router.Route
RouteHandler = Router.RouteHandler

DashboardPage = require("pages/dashboard.cjsx")
WelcomePage = require("pages/welcome.cjsx")

App = React.createClass
  render: ->
    <div>
      <header>
        <ul>
          <li><Link to="dashboard">Dashboard</Link></li>
          <li><Link to="welcome">Welcome</Link></li>
        </ul>
      </header>

      <RouteHandler/>
    </div>


routes = (
  <Route name="app" path="/" handler={App}>
    <Route name="dashboard" handler={DashboardPage} />
    <Route name="welcome" handler={WelcomePage} />
  </Route>
)

Router.run routes, (Handler) ->
  React.render(<Handler/>, document.body)
