var browserify = require("browserify")

opts = { debug: "true",
         paths: ["./app/spec", "./app/src", "./app/css"] }

var b = browserify(opts);
b.add("./app/src/index.cjsx")
b.bundle().pipe(process.stdout);
