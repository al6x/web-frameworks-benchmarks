http = require 'http'

# Call remote HTTP service.
callRemote = app.sync (options, data, callback) ->
  req = http.request options, (res) ->
    buff = []
    res.setEncoding 'utf8'
    res.on 'data', (chunk) -> buff.push chunk
    res.on 'end',          -> callback null, buff.join('')
  req.on 'error', (err)    -> callback err
  req.write data
  req.end()

class app.Posts extends app.HttpController
  @layout '/layout'

  index: ->
    # Reading some text from file.
    text = callRemote {host: 'localhost', port: 4000, path: '/', method: 'GET'}, ''

    # Making a little more data to process.
    @posts = [text, text, text, text, text]

    # Rendering.
    @render()