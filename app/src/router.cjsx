# React   = require("react")
# Router  = require("react-router")
#
# Link    = Router.Link
# Route   = Router.Route
# RouterHandler = Router.RouterHandler
#
# App = React.createClass
#   render: ->
#     <div>
#       <header>
#         <ul>
#           <li><Link to="app">Dashboard</Link></li>
#         </ul>
#       </header>
#
#       <RouteHandler/>
#     </div>
#
# routes = (
#   <Route name="app" path="/" handler={App}>
#   </Route>
# )
#
# Router.run routes, (Handler) ->
#   React.render(<Handler/>, document.body)
