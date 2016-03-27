require "pry"

class Player

  attr_accessor :name, :wins, :weapon, :losses, :ties

  def initialize(name:, wins:, weapon:, losses:, ties:)
    @name = name
    @wins = wins
    @weapon = nil
    @losses = losses
    @ties = ties
  end

#choose_weapon method allows player to type their selection
#
#
#returns toss as a "r" for rock, "s" for scissor, "p" for paper.

# if the user does not enter a selection a hint will remind them to do so
#
# returns the players selection once they've entered a valid selection
  def choose_weapon
    weapon =nil 
    while weapon != "rock" && weapon != "paper" && weapon != "scissors"
      print "Type 'rock', 'paper', or 'scissors'.\n\n"
      weapon = gets.chomp.downcase
    end
    weapon
  end

  def win_another_round
    @wins += 1    
  end

  def lose_another_round
    @losses += 1    
  end

  def tie_another_round
    @ties += 1
  end
end