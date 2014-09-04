TestView = require('../src/view.coffee')

describe 'backbone stuff tests', () ->

  it 'creates a view', () ->
    view = new TestView()
    expect(view).not.toBe null
    expect(1).toBe 1

  it 'adds', () ->
    expect(2).toEqual 2
