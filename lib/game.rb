require "pry"
require_relative "player.rb"

class Game
	if selection1 == "rock" && selection2 == "scissors" || 
    selection1 == "scissors" && selection2 == "paper" || 
    selection1 == "paper" && selection2 == "rock"
    result = "Player 1, WINS!"

  elsif selection1 == "scissors" && selection2 == "rock" || 
    selection1 == "paper" && selection2 == "scissors" || 
    selection1 == "rock" && selection2 == "paper"
    result = "Player 2, WINS!"

  elsif selection1 == selection2
    result = "TIE. TRY AGAIN."
  result
  end
end