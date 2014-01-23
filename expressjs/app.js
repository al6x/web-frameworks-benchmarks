var http    = require('http')
var express = require('express')
var ejs     = require('ejs')

// Configuring.
var app = express()
app.use(express.bodyParser())
app.engine('html', ejs.renderFile)

// Call remote HTTP service.
var callRemote = function(options, data, callback){
  var req = http.request(options, function(res){
    var buff = []
    res.setEncoding('utf8')
    res.on('data', function(chunk){buff.push(chunk)})
    res.on('end', function(){callback(null, buff.join(''))})
  })
  req.on('error', function(e){callback(e)})
  req.write(data)
  req.end()
}

// Responding after calling remote service.
app.get('/', function(req, res){
  // Reading some text from remote service.
  var options = {host: 'localhost', port: 4000, path: '/', method: 'GET'}
  callRemote(options, '', function(err, text){
    // Making a little more data to process.
    var posts = [text, text, text, text, text]

    // Rendering
    app.render('index.html', {posts: posts}, function(err, html){
      app.render('layout.html', {html: html}, function(err, html){
        res.send(html)
      })
    })
  })
})

app.listen(3000)
console.log("express started on http://localhost:3000 in " + app.get('env') + " environment")