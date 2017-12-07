require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb(:ready)
  end

  post '/names' do
    @p1 = params[:P1]
    @p2 = params[:P2]
    erb(:play)
  end

  run if app_file == $0
end
