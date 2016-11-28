require 'sinatra/base'

class DBServer < Sinatra::Base

  STORED_PARAMS = {}

  set :port, 4000

  get '/' do
    erb(:index)
  end

  get '/set' do
    STORED_PARAMS.merge!(params)
    redirect('/')
  end

  get '/get' do
    @returned_value = STORED_PARAMS[params[:key]]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
