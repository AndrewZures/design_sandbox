var fs = require("fs")
var watchify = require("watchify")
var browserify = require("browserify")

var opts = { debug: "true",
             paths: ["./app/spec", "./app/src", "./app/sass"],
             cache: {},
             packageCache: {},
             poll: true,
             fullPaths: true
            }

var rebundle = function(w){
  w.bundle().pipe(fs.createWriteStream(__dirname + '/bundle.js'));
}

console.log("bundling");
var b = browserify(opts);
b.add("./app/src/index.cjsx")
w = watchify(b)
w.on("update", function(){ rebundle(w) });
rebundle(w);
