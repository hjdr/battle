require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.switch
    @attack = session[:attack]
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_player)
    redirect '/death' if @game.opponent_player.death
    erb(:attack)
  end

  get '/death' do
    @game = $game
    erb(:death)
  end
end
