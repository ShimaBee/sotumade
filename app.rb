require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :index
end



get '/input' do
  erb :input
end

post '/result' do
  @common = params[:common].to_i
  @compulsory = params[:compulsory].to_i
  @expertSelect = params[:expertSelect].to_i
  @freedom = params[:freedom].to_i

  if @common >= 40  && @compulsory >= 34 && @expertSelect >= 26 && @freedom >= 24
  erb :graduation

  else
    @remaindUnit = 124 - (@common + @compulsory + @expertSelect + @freedom)

    erb :remaind
    end
end


get '/result' do
  erb :result
end


