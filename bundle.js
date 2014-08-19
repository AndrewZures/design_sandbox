(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var main = require('../src/main');

describe('a test', function(){

  it('tests', function(){
    expect(main.hello()).toEqual(3);
  });

  it('also tests', function(){
    expect(2+2).toEqual(4);
  });

});

},{"../src/main":3}],2:[function(require,module,exports){
function add(x,y) {
  return x + y;
}

module.exports.add = add;

},{}],3:[function(require,module,exports){
var dep = require('./dep');

function hello(){
  return dep.add(1,2);
}

window.print_hello = function(){
  console.log(hello());
};

module.exports.hello = hello;
module.exports.print_hello = print_hello;

},{"./dep":2}]},{},[3,1]);
