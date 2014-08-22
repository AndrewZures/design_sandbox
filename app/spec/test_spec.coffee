main = require('../src/main.coffee')

describe 'a test', ->

  it 'tests', ->
    expect(main.hello()).toEqual(3)

  it 'also tests', ->
    expect(2+2).toEqual(4)
