require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :new
    end
    
    get '/new' do
      erb :new
    end
     
    post '/teams' do
      @params = params
      erb :team
    end
    
    


end
