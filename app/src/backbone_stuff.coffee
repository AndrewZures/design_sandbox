Diluvia.Test.View = Backbone.View.extend
  el: $ 'body'

  initialize: ->
    @render()

  render: ->
    $(@el).append '<ul><li>Hello, Backbone!</li></ul>'
