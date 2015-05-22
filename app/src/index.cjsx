require('polyfill-function-prototype-bind')

global.React   = require("react")
Router  = require("react-router")

Link    = Router.Link
Route   = Router.Route
RouteHandler = Router.RouteHandler

WelcomePage = require("./pages/welcome.cjsx")

App = React.createClass
  render: ->
    <div>
      <header>
        <ul>
          <li><Link to="app">Dashboard</Link></li>
          <li><Link to="welcome">Welcome</Link></li>
        </ul>
      </header>

      <RouteHandler/>
    </div>


routes = (
  <Route name="app" path="/" handler={App}>
    <Route name="welcome" handler={WelcomePage}/>
  </Route>
)

Router.run routes, (Handler) ->
  React.render(<Handler/>, document.body)
