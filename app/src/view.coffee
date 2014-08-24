module.exports = Backbone.View.extend
  el: $('#some-id')
  template: _.template('name: <%= name %><br/> occupation: <%= occupation %>')

  initialize: ->
    _.bindAll(@, "render")

  render: ->
    $(@el).html(@template(@model.toJSON()))
