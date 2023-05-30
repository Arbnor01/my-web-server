require 'sinatra/base'

class Application < Sinatra::Base
  get '/' do

    return 'Hello!'
  end
end

