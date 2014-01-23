fs2 = require 'mono/fs2'

class app.Posts extends app.HttpController
  @layout '/layout'

  index: ->
    # Reading some text from file.
    text = fs2.readFile('../lorem-ipsum.txt')

    # Making a little more data to process.
    @posts = [text, text, text, text, text]

    # Rendering.
    @render()