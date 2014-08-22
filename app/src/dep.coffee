closure = {
  add: (x,y) ->
    really_add(x,y)

  stuff: (array) ->
    _.reduce array, ((memo, num) -> memo + num), 0
}

z = 1
really_add = (x,y) ->
  x + y + z

module.exports = closure
