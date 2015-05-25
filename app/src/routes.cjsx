Toolbar       = require("pages/toolbar.cjsx")
DashboardPage = require("pages/dashboard.cjsx")
WelcomePage   = require("pages/welcome.cjsx")
Content       = require("pages/content.cjsx")

Route = Router.Route
DefaultRoute = Router.DefaultRoute

routes =
  <Route name="app" path="/" handler={Toolbar}>
    <Route name="inbox" handler={WelcomePage} />
    <Route name="calendar" handler={Content} />
    <DefaultRoute handler={DashboardPage} />
  </Route>

module.exports = routes
