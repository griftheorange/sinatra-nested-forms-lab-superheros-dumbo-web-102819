require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post '/teams' do
        @team = params["team"]
        @heroes = params["team"]["heroes"]
        erb :team
    end

end
