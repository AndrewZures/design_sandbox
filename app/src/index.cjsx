require('polyfill-function-prototype-bind')

global.React = require("react")
global.Router = require('react-router')
global.Link = Router.Link
global.RouteHandler = Router.RouteHandler
global.Routes = require("routes.cjsx")

Router.run Routes, (Handler) ->
  React.render(<Handler/>, document.getElementById('some-id'))
