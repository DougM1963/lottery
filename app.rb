require "sinatra"
require_relative "lottery.rb"

get '/' do
	erb :home
   end

 post '/check_numbers' do
  num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    win1 = params[:win1]
    win2 = params[:win2]
    win3 = params[:win3]
    win4 = params[:win4]
    win5 = params[:win5]
    win6 = params[:win6]  
    redirect '/result?num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&num4=' + num4 + '&num5=' + num5 + '&num6=' + num6  + '&win1=' + win1 + '&win2=' + win2 + '&win3=' + win3 + '&win4=' + win4 + '&win5=' + win5 + '&win6=' + win6
end

 get '/result' do
    num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    win1 = params[:win1]
    win2 = params[:win2]
    win3 = params[:win3]
    win4 = params[:win4]
    win5 = params[:win5]
    win6 = params[:win6]  
    erb :result, :locals => {:num1 => num1, :num2 => num2, :num3 => num3, :num4 => num4, :num5 => num5, :num6 => num6, :win1 => win1, :win2 => win2, :win3 => win3, :win4 => win4, :win5 => win5, :win6 => win6}
    end

 post '/result' do
    num1 = params[:num1]
    num2 = params[:num2]
    num3 = params[:num3]
    num4 = params[:num4]
    num5 = params[:num5]
    num6 = params[:num6]
    win1 = params[:win1]
    win2 = params[:win2]
    win3 = params[:win3]
    win4 = params[:win4]
    win5 = params[:win5]
    win6 = params[:win6]  
    redirect '/result?num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&num4=' + num4 + '&num5=' + num5 + '&num6=' + num6  + '&win1=' + win1 + '&win2=' + win2 + '&win3=' + win3 + '&win4=' + win4 + '&win5=' + win5 + '&win6=' + win6
    end



 