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
      @team = Team.new(params[:team])

      params[:heroes].each do |details|
        Hero.new(details)
      end
      
      # @ships = Ship.all
      puts params

      erb :team
    end
    
    


end
