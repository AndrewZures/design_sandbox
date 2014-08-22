Main = require('../src/main.coffee')

describe 'a test', () ->

  it 'tests', () ->
    expect(Main.hello + 3).toEqual(6)

  it 'tests', () ->
    expect(Main.hello_there(3,4) + 3).toEqual(10)

  it 'also tests', () ->
    expect(2+2).toEqual(4)

