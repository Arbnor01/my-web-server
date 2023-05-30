require 'sinatra/base'

class Application < Sinatra::Base
  
  post '/submit' do
    name = params[:name]
    message = params[:message]
    
    "Thanks Arbnor, you sent this message: \"#{"Hello world"}\""
  end
end

