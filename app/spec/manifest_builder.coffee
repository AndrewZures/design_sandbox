glob = require("glob")
fs = require('fs')

fs.writeFile './output.coffee', ''

files_to_remove = [
  'manifest_busfasdfilder.coffee'
  'output.coffee'
]

glob '**/*.coffee', (er, files) ->
  console.log(files)

  i = 0
  while i < files.length
    if should_remove(files[i], files_to_remove)
      files.splice(i, 1)
      i--
    i++

  for file in files
    fs.appendFile './output.coffee', "require('./" + file + "')\n"

should_remove = (file, files_to_remove) ->
  for rem_file in files_to_remove
    if rem_file == file
      console.log(file)
      return true
  false
