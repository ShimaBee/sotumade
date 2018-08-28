require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :index
end



get '/input' do
  erb :input
end

post '/result' do
  @expert = params[:expert]
  @expertSelect = params[:expertSelect]
  @unitExpertSelect = params[:unitExpertSelect]
  erb :result
end


get '/result' do
  erb :result
end


