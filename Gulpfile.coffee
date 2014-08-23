gulp    =  require 'gulp'
shell   =  require 'gulp-shell'
run_seq = require 'run-sequence'

src_dir  = './app/src'
spec_dir = './app/spec'

gulp.task 'default', ->
