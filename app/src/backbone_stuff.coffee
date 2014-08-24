module.exports = Backbone.View.extend
  el: $ 'body'

  initialize: ->
    @what = 1
    @render()

  render: ->
    $(@el).append '<ul><li>Hello, Backbone!</li></ul>'
