require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    erb :create_puppy
    @puppy = Puppy.new(params)
    puppy.name = params[:name]
    puppy.breed = params[:breed]
    puppt.age = params[:age]
  end
end
