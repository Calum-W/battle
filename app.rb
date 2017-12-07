require 'sinatra/base'
require 'shotgun'
require 'player.rb'

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
    erb(:attack)
  end

  run if app_file == $0
end
