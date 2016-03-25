require "pry"

class Player
  attr_reader :name
  attr_accessor :wins, :losses, :ties

  def initialize(name:, wins:, losses:, ties:)
    @name = name
    @wins = wins
    @losses = losses
    @ties = ties
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