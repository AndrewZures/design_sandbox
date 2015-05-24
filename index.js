var express = require('express');
var app = express();
var sassMiddleware = require("node-sass-middleware");

app.set('port', (process.env.PORT || 5000));

app.get('/', function(req, res){
  res.sendFile('index.html', { root: __dirname })
});

app.get('/bundle.js', function(req, res){
  res.sendFile('bundle.js', { root: __dirname })
});

app.use(sassMiddleware({
                    src: __dirname + '/app/sass',
                    dest: __dirname + '/public',
                    debug: true,
                    outputStyle: 'expanded'
                })
           );

app.use(express.static('public'));
app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
});
