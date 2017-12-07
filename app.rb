require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'

class Battle < Sinatra::Base

  get '/' do
    erb(:ready)
  end

  post '/names' do
    $P1 = Player.new(params[:P1])
    $P2 = Player.new(params[:P2])
    redirect '/play'
  end

  get '/play' do
    @P1_name = $P1.name
    @P2_name = $P2.name
    erb(:play)
  end

  get '/attack' do
    @P1_name = $P1.name
    @P2_name = $P2.name
    @P2 = $P2
    Game.new.attack(@P2)
    erb(:attack)
  end

  run if app_file == $0
end
