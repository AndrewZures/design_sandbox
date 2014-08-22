describe 'backbone stuff tests', () ->

  it 'creates a view', () ->
    view = Diluvia
    expect(view).not.toBe null

    view2 = Diluvia.Hi = {}
    expect(view2).not.toBe null

    view3 = new Diluvia.Test.View()
    expect(view3).not.toBe null
