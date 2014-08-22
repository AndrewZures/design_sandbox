Add = require('./dep.coffee')

hello_there = (x,y) ->
  Add.add(x,y)

module.exports.hello = 3
module.exports.hello_there = hello_there
