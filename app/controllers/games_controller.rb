class GamesController < ApplicationController
  def games_method
    name_input = params["name"]
    first_letter = name_input[0]
    if first_letter == "a"
      render json: {message: "Hey #{name_input} your name starts with the first letter of the alphabet"}
    else
      render json: {message: "Hey #{name_input} your name is not special"}
    end
  end
  def guess_number_method
    number_input = params["number"].to_i
    correct_number = 36
    if number_input == correct_number
      render json: "You won"
    elsif number_input < correct_number
      render json: "too low"
    elsif number_input > correct_number
      render json: "too high"
    end
  end
end

