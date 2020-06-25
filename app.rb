require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_one_name]
    @player_2 = session[:player_two_name]
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    @player_1 = session[:player_one_name]
    @player_2 = session[:player_two_name]
    erb :attack
  end

  run! if app_file == $0
end