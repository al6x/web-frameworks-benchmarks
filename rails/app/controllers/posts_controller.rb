require 'net/http'

def callRemote(path)
  url = URI.parse path
  req = Net::HTTP::Get.new url.path
  res = Net::HTTP.start(url.host, url.port){|http| http.request(req)}
  res.body
end

class PostsController < ApplicationController
  def file
    # Reading some text from file.
    data = File.read('../lorem-ipsum.txt')

    # Making a little more data to process.
    @posts = [data, data, data, data, data]

    render action: 'index'
  end

  def service
    # Reading some text from file.
    data = callRemote 'http://localhost:4000/'

    # Making a little more data to process.
    @posts = [data, data, data, data, data]

    render action: 'index'
  end
end