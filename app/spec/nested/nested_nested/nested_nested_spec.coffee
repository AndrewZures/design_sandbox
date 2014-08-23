Index =  require '../../../src/index.coffee'
Add =   require '../../../src/dep.coffee'

describe 'a test', () ->

  it 'tests', () ->
    expect(Index.hello + 3).toEqual(6)

  it 'tests again', () ->
    expect(Index.add_plus_1(3,4) + 3).toEqual(11)

  it 'and again', () ->
    expect(Index.iterate([1,2,3])).toEqual(6)

  it 'can use underscore in other namespace', ->
    expect(Add.stuff([3,4,5])).toEqual(12)

  it 'also tests', () ->
    expect(2+2).toEqual(4)

  # in progress
  xit 'does jquery stuff', () ->
    expect($( ".inner" ).append( "<p>Test</p>" )).toEqual null
