require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new(@player_1,@player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name  = $player_2.name
    @player_2_hit_points = $player_2.hit_points
    erb :play
  end

  post '/send-attack' do
    $game.attack($player_2)
    redirect '/attack'
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name  = $player_2.name
    @player_2_hit_points = $player_2.hit_points
    erb :attack
  end

end
