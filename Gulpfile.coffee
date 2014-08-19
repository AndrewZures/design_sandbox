gulp    =  require 'gulp'
shell   =  require 'gulp-shell'
run_seq = require 'run-sequence'

src_dir  = './app/src'
spec_dir = './app/spec'

sources =
  js:
    src: "#{src_dir}/*.js"
    spec: "#{spec_dir}/*.js"

gulp.task 'default', ->

gulp.task 'pre-test', ->
  run_seq 'browserify-test', 'stuff'

  #attempting forced synchro
gulp.task 'stuff', shell.task(['ls'])

gulp.task 'post-test', shell.task(
  ['rm -rf test_bundle.js'])

gulp.task 'browserify', shell.task(
  ['browserify app/src/main.js -o bundle.js'])

  #why is calling this in testem causing weird testem test resets?
gulp.task 'browserify-test', shell.task(
    ['browserify app/src/main.js app/spec/spec_manifest.js -o test_bundle.js'])
