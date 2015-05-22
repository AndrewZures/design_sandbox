var glob = require('glob');
var fs = require('fs');

var this_file = 'manifest_builder.js';
var input_path = 'app/spec/**/*.coffee';
var output_file = './spec_index.coffee';
var output_path = "./" + output_file;
var files_to_remove = [ this_file, output_file ];

execute();

function execute(){
  fs.writeFile(output_path, '');
  glob(input_path, function(er, files) {
    var filtered_files = filter_files(files);
    write_files(filtered_files);
  });
}

function write_files(files){
  for(var i = 0; i < files.length ; i++) {
    fs.appendFile(output_path, "require('./" + files[i] + "')\n");
  }
}

function filter_files(files){
  for(var i = 0; i < files.length; i++){
    if(should_remove(files[i], files_to_remove)){
      files.splice(i,1);
      i--;
    }
  }

  return files;
}

function should_remove(file, rem_files){
  for(var i = 0; i < rem_files.length;  i++){
    if(file === rem_files[i]){
      return true;
    }
  }

  return false;
}
