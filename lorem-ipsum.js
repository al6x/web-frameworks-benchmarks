// Service that reply lorem ipsum text after 200ms delay.
// Its performance should be ennough for needs of our benchmark.

var http = require('http')
var fs   = require('fs')

var loremIpsum = fs.readFileSync('./lorem-ipsum.txt')

http.createServer(function(req, res){
  setTimeout(function(){res.end(loremIpsum)}, 200)
}).listen(4000)

console.log('lorem ipsum server started on 4000 port')