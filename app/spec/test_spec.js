var main = require('../src/main');

describe('a test', function(){

  it('tests', function(){
    expect(main.hello()).toEqual(3);
  });

  it('also tests', function(){
    expect(2+2).toEqual(4);
  });

});
