require "pry"
require_relative "player.rb"

class Rules
	if selection1 == "rock" && selection2 == "scissors" || 
    selection1 == "scissors" && selection2 == "paper" || 
    selection1 == "paper" && selection2 == "rock"
    result = "Player 1, WINS!"
    @player1.wins_a_round

  elsif selection1 == "scissors" && selection2 == "rock" || 
    selection1 == "paper" && selection2 == "scissors" || 
    selection1 == "rock" && selection2 == "paper"
    result = "Player 2, WINS!"
    @player2.wins_a_round

  elsif selection1 == selection2
    result = "TIE. TRY AGAIN."
  end
  result
end