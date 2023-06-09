require 'sinatra/base'

class Application < Sinatra::Base
  
  post '/submit' do
    name = params[:name]
    message = params[:message]
    
    "Thanks Arbnor, you sent this message: \"#{"Hello world"}\""
  end

  get '/names' do
    return "Julia, Mary, Karim"
  end

  post '/sort-names' do
    names = params[:names].split(',')
    sorted_names = names.sort.join(',')
    sorted_names
  end
end

