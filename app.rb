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
    redirect '/start-battle'
  end

  get '/start-battle' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :start_battle
  end

  post '/send-attack' do
    $game.switch_player
    $game.attack($game.defender)
    redirect '/attack'
  end

  get '/attack' do
    @attacker = $game.attacker
    @defender = $game.defender
    erb :attack
  end

  # post '/counter-attack' do
  #   $game.attack($game.player_1)
  #   redirect '/play'
  # end

end
