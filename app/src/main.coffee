#vendors
global._ = require('./vendors/underscore.js')

Add = require('./dep.coffee')

add_plus_1 = (x,y) ->
  Add.add(x,y)

iterate = (array) ->
  _.reduce array, ((memo, num) -> memo + num), 0

module.exports.hello = 3
module.exports.add_plus_1 = add_plus_1
module.exports.iterate = iterate
