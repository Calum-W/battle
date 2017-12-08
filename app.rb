require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:ready)
  end

  post '/names' do
    $current_game = Game.new({ :name1 => params[:P1], :name2 => params[:P2] })
    redirect '/play'
  end

  get '/play' do
    @P1_name = $current_game.P1.name
    @P2_name = $current_game.P2.name
    erb(:play)
  end

  get '/attack' do
    @game = $current_game
    $current_game.attack(@game.P2)
    erb(:attack)
  end

  get '/p2attack' do
    @game = $current_game
    $current_game.attack(@game.P1)
    erb(:p2attack)
  end

  run if app_file == $0
end
