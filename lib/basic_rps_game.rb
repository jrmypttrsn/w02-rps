require 'pry'

# 1. Basic rock-paper-scissors game (no custom objects or classes just yet).
#    Output should be sensibly formatted. Should only accept valid moves. Players
#    only need to play a single round. The game should report the result of the
#    round.


# rock > scissors
# scissors > paper
# paper > rock

puts "ROCK.PAPER.SCISSORS.\n
LET'S DO THIS.\n"


def choose_winner(selection1, selection2)
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
###########################################################
def make_selection
  selection = nil
  while selection != "rock" && selection != "paper" && selection != "scissors"
    puts "Hint: Type rock, paper, or scissors."
    selection = gets.chomp
  end
  selection
end

# players make their selection by enterin rock, paper, or scissors
puts "Player 1. Select rock, paper, or scissors."
selection1 = make_selection

puts "Player 2. Select rock, paper, or scissors."
selection2 = make_selection


result = choose_winner(selection1, selection2)
puts result


# binding.pry


#currently doesn't display any victory messages, just ends after game without saying who won