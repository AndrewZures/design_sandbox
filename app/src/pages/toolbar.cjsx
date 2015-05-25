Link         = Router.Link
RouteHandler = Router.RouteHandler

Toolbar = React.createClass
  render: ->
    <div>
      <div className="toolbar-container shadow fixed-to-top">
        <ul className="toolbar">
          <li><Link to="app"      className="toolbar__item center">One</Link></li>
          <li><Link to="inbox"    className="toolbar__item center">Two</Link></li>
          <li><Link to="calendar" className="toolbar__item center">Three</Link></li>
        </ul>
      </div>
      <div className="main-content">
        <RouteHandler />
      </div>
    </div>

module.exports = Toolbar
