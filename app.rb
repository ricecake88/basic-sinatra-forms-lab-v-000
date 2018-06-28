require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    @team_name = params[:team_name]
    @team_mates = "Coach: " + params[:coach] + "\n" + "Point Guard" + params[:point_guard] + "\n" + "Shooting Guard: " + params[:point_guard]
    
    erb :team
  end

end
