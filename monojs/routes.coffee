app.router.configure (map) ->
  map.get '/', controller: 'Posts', action: 'index'