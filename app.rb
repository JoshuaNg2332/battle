require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    @player_one_name = params[:player_one_name]
    @player_two_name = params[:player_two_name]
    @player_three_name = params[:player_three_name]
    erb :play
  end

  run! if app_file == $0
end