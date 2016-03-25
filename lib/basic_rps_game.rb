require 'pry'

puts "ROCK.PAPER.SCISSORS.\n
LET'S DO THIS.\n"

# determines a winner based
#
# + selection1 refers to the selection player 1 enters
# + selection2 refers to the selection player 2 enters
#
# returns the result based on the rules set up

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

# player makes their selection
#
# if the user does not enter a selection a hint will remind them to do so
#
# returns the players selection once they've entered a valid selection

def make_selection
  selection = nil
  while selection != "rock" && selection != "paper" && selection != "scissors"
    puts "Hint: Type rock, paper, or scissors."
    selection = gets.chomp
  end
  selection
end

# players make their selection by entering rock, paper, or scissors
puts "Player 1. Select rock, paper, or scissors."
selection1 = make_selection

puts "Player 2. Select rock, paper, or scissors."
selection2 = make_selection


result = choose_winner(selection1, selection2)
puts result


# binding.pry