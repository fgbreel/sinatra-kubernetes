require "rubygems"
require "sinatra"

class App < Sinatra::Base
  configure do
    set :sessions, true
    set :bind, "0.0.0.0"
    set :port, 9292
  end

  get "/" do
    erb :index
  end
end
