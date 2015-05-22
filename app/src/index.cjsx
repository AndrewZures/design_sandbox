require('polyfill-function-prototype-bind')

React   = require("react")
Router  = require("react-router")

Link    = Router.Link
Route   = Router.Route
RouteHandler = Router.RouteHandler

App = React.createClass
  render: ->
    <div>
      <header>
        <ul>
          <li><Link to="hey">Hey</Link></li>
          <li><Link to="app">Dashboard</Link></li>
        </ul>
      </header>

      <RouteHandler/>
    </div>

Something = React.createClass
  render: ->
    <div>
      <h2>hey there</h2>
    </div>

routes = (
  <Route name="app" path="/" handler={App}>
    <Route name="hey" handler={Something} />
  </Route>
)

Router.run routes, (Handler) ->
  React.render(<Handler/>, document.body)
