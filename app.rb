require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:ready)
  end

  post '/names' do
    session[:P1] = params[:P1]
    session[:P2] = params[:P2]
    redirect '/play'
  end

  get '/play' do
    @p1 = session[:P1]
    @p2 = session[:P2]
    erb(:play)
  end

  run if app_file == $0
end
