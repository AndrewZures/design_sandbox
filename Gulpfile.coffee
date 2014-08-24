gulp    =  require 'gulp'
shell   =  require 'gulp-shell'
run_seq = require 'run-sequence'

src_dir  = './app/src'
spec_dir = './app/spec'
index    = './app/src/index.coffee'
output   = './bundle.js'

sources = {
  bundle: 'bundle.js'
}

watches = {
  javascripts: './app/**/*.{coffee, js}'
}

gulp.task 'watch', ->
  gulp.watch watches.javascripts ['javascript']

gulp.task 'default', ->
  run_seq 'javascript', 'start'

gulp.task 'javascript',
  shell.task ["browserify -t coffeeify #{index} -o #{output}"]

gulp.task 'clean',
  shell.task ["rm #{output}"]

gulp.task 'start',
  shell.task ["open hi.html"]
