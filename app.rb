require 'sinatra/base'

class DBServer < Sinatra::Base

  PARAMS = {}

  get '/' do
    erb(:index)
  end

  get '/set' do
    PARAMS.merge!(params)
    redirect('/')
  end

  get '/get' do
    @returned_value = PARAMS[params[:key]]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
