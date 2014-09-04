template = require('./some_template.html')

module.exports = Backbone.View.extend
  el: $('#some-id')

  initialize: ->
    _.bindAll(@, "render")

  render: ->
    attrs  = {
      name: 'hello',
      occupation: 'awesome',
      first:
        second: 'first-second'
    }
    $(@el).html(template(attrs))
