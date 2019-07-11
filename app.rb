require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_points = $player2.health_points
    @attack = session[:attack]
    erb(:play)
  end

  get '/attack' do
    $game = Game.new
    @player1 = $player1.name
    @player2 = $player2.name
    $game .attack($player2)
    erb(:attack)
  end

end
