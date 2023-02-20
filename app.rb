require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :home
end

get '/:id' do
  @restaurant = Restaurant.find(params['id'])
  erb :show
end

# get '/2' do
#   "Hello World"
# end
