require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

post '/' do
   @name = params[:user_name]
   @people = params[:users]

 end

get '/list' do

  erb :list
end

get '/result' do
  @schedule = [ ['8pm',    'Doors close'],
                ['8.30pm', 'Champagne and canapes served'],
                ['9pm',    'Speech'],
                ['9.30pm', 'Painting unveiled'],
                ['9.40pm', 'Live band plays'] ]

  erb :result
end

