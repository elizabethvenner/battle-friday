require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  post '/send-attack' do
    $game.attack($game.player_2)
    redirect '/attack'
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :attack
  end

end
