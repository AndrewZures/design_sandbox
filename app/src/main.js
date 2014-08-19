var dep = require('./dep');

function hello(){
  return dep.add(1,2);
}

window.print_hello = function(){
  console.log(hello());
};

module.exports.hello = hello;
module.exports.print_hello = print_hello;
