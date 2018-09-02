require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :index
end



get '/input' do
  erb :input
end

post '/result' do
  @exercis = params[:exercise].to_i
  @humanity = params[:humanity].to_i
  @society = params[:society].to_i
  @synthesis = params[:synthesis].to_i
  @feature = params[:future].to_i
  @information = params[:infomation].to_i
  @language1 = params[:language1].to_i
  @language2 = params[:language2].to_i
  @dep_feature = params[:DFuture].to_i
  @dep_basic_compulsory = params[:DBasicCompulsory].to_i
  @dep_basic_select = params[:DBasicSelect].to_i
  @dep_select = params[:DSelect].to_i
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


