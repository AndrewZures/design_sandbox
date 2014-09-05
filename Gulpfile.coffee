gulp               =  require 'gulp'
run_seq            =  require 'run-sequence'
browserify         =  require 'browserify'
coffeeify          =  require 'coffeeify'
run                =  require 'gulp-run'
run_seq            =  require 'run-sequence'

gulp.task 'bundle-source', ->
  run('browserify app/src/index.coffee -o bundle.js').exec()

gulp.task 'bundle-specs', ->
  run('node ./app/spec/manifest_builder.js').exec()
  run('browserify app/src/index.coffee spec_index.coffee -o spec_bundle.js').exec()

