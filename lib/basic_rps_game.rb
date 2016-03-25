require 'pry'

# 1. Basic rock-paper-scissors game (no custom objects or classes just yet).
#    Output should be sensibly formatted. Should only accept valid moves. Players
#    only need to play a single round. The game should report the result of the
#    round.


# rock > scissors
# scissors > paper
# paper > rock

puts "ROCK.PAPER.SCISSORS.\n
LET'S DO THIS."

puts "Player 1. Select rock, paper, or scissors."
selection1 = gets.chomp.upcase

puts "Player 2. Select rock, paper, or scissors."
selection2 = gets.chomp.upcase

#refactored

def choose_winner(selection1, selection2)
  if selection1 == "rock" && selection2 == "scissors" || 
  elsif selection1 == "scissors" && selection2 == "paper" || 
  elsif selection1 == "paper" && selection2 == "rock"
    result = "Player 1, WINS!"

  elsif selection1 == "scissors" && selection2 == "rock" || 
  elsif selection1 == "paper" && selection2 == "scissors" || 
  elsif selection1 == "rock" && selection2 == "paper"
    result = "Player 2, WINS!"

  elsif selection1 == selection2
    result = "TIE. TRY AGAIN."
  result
end



#currently doesn't display any victory messages, just ends after game without saying who won
    
    
    
    