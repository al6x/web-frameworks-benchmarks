require('coffee-script')
global.app = require('mono').app

// Configuring.
app.configure(__dirname)
app.brand = 'monojs-sample'
app.after('http', function(http){
  app.http.use(app.http.express.bodyParser())
  app.http.use(http.prepare())
  require('./routes')
})

app.requireDirectory(__dirname + '/controllers')
app.render.directories.push(__dirname + '/templates')

// Starting http server.
app.http.run()