require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    @team_name = params[:name]
    @team_mates = "Coach: " + params[:coach] + "<br/>" + "Point Guard: " + params[:point_guard] + "<br/>" + "Shooting Guard: " + params[:point_guard] + "<br/>" + "Small Forward: " + params[:small_forward] + "<br />" + "Power Forward: " + params[:power_forward] + "<br/>" + "Center: " + params[:center] + "<br />"
    
    erb :team
  end

end
