dep = require('./dep.coffee')

hello() ->
  dep.add(1,2)

window.print_hello = ->
  console.log(hello())

module.exports.hello = hello
module.exports.print_hello = print_hello
