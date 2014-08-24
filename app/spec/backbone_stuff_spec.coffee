TestView = require('../src/backbone_stuff.coffee')

describe 'backbone stuff tests', () ->

  it 'creates a view', () ->
    view = new TestView()
    expect(view).not.toBe null
    expect(view.what).toBe 1
