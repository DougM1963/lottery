require "sinatra"
require_relative "lottery.rb"

get '/' do
	erb :home
   end

 post '/number' do
    num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    redirect '/result?num1=' + num1 +'&num2=' + num2 + '&num3=' + num3 +'&num4=' + num4 + '&num5=' + num5 + '&num6=' + num6 
    end

 get '/result' do
 	num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    erb :result, :locals => {:num1 => num1, :num2 => num2, :num3 => num3, :num4 => num4, :num5 => num5, :num6 => num6}
    end

     post '/winning_number' do
    num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    redirect '/final?num1=' + num1 +'&num2=' + num2 + '&num3=' + num3 +'&num4=' + num4 + '&num5=' + num5 + '&num6=' + num6 
    end

 get '/final' do
    num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    erb :final, :locals => {:num1 => num1, :num2 => num2, :num3 => num3, :num4 => num4, :num5 => num5, :num6 => num6}
    end

 