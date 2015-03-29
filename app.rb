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

def number_field_tag(x)
        options = options.stringify_keys
        options["type"] ||= "number"
        if range = options.delete("in") || options.delete("within")
          options.update("min" => range.min, "max" => range.max)
        end
        text_field_tag(name, value, options)
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
