class NamesController < ApplicationController
  def name_method
    input = params[:name]
    if input[0].downcase == "a" 
      render json: {message: "Hey your name starts with the first letter of the alphabet!"}
    else  
      render json: {message: "Your name is #{input.upcase}!"}
    end
  end

  def number_guess
    number = 20
    guess = params[:guess].to_i

    if guess < number
      render json: {message: "You are too low..."}
    elsif guess > number
      render json: {message: "you are too high..."}
    elsif guess == number
      render json: {message: "You win!!!"}
    end
  end
end
