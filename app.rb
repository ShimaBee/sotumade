require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :index
end



get '/input' do
  erb :input
end

post '/result' do
  @expert = params[:expert].to_i
  @expertSelect = params[:expertSelect].to_i
  @unitExpertSelect = params[:unitExpertSelect].to_i

  if @expert >= 10 && @expertSelect >= 10 && @unitExpertSelect >= 10
  erb :graduation

  else
    @remaindUnit = 128 - @expert + @expertSelect + @unitExpertSelect


    erb :remaind
    end
end


get '/result' do
  erb :result
end


