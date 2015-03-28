require 'sinatra'
require 'csv'



def make_header(x)
  $i = 1
  output = ""
  while $i<=x
    output += "<th><input type='text' name='users" + $i.to_s + "'></th>"
    $i += 1
  end
  output
end



get '/' do
  erb :index
end

post '/' do
   @numItems = params[:items].to_i
   @numUsers = params[:users].to_i

   erb :list

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

