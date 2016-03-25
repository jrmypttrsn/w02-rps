require "pry"

# class Dog

# 	attr_accessor :name, :age, :species, :gender, :tail, :legs, :eyes, :ears, :license, :rabbits_killed

# 	def initialize(name:, age:, species:, gender:, tail:, legs:, eyes:, ears:, license:, rabbits_killed:)
#     @name = name
#     @age = age
#     @species = species
#     @gender = gender
#     @tail = tail
#     @legs = legs
#     @eyes = eyes
#     @ears = ears
#     @license = license
#     @rabbits_killed = rabbits_killed
#   end
  
#   def kill_another_rabbit
#     @rabbits_killed += 1
#   end
# end

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
end