require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
  end
  
  post '/team' do
    @team_name = params[:team_name]
  end

end
