require 'net/http'

def callRemote(path)
  # For some unknown to me reason ruby wants that trailing slash to be added to url.
  url = URI.parse path + '/'
  req = Net::HTTP::Get.new url.path
  res = Net::HTTP.start(url.host, url.port){|http| http.request(req)}
  res.body
end

class PostsController < ApplicationController
  def index
    # Reading some text from file.
    data = callRemote 'http://localhost:4000'

    # Making a little more data to process.
    @posts = [data, data, data, data, data]

    render action: 'index'
  end
end