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
    @puppy = Puppy.new(name, breed, age)
    @puppy.name = params[:name]
    @puppy.breed = params[:breed]
    @puppy.age = params[:age]
  end
end
