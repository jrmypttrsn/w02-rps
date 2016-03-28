require "pry"

class Player

  attr_accessor :name, :wins, :weapon, :losses, :ties

  def initialize(name:)
    @name = name
    @wins = 0
    @weapon = nil
    @losses = 0
    @ties = 0
  end


  def input(available_weapons)
    puts "\n\nChoose a weapon:"
    acceptable_choices.each { |e| puts e}
    print ">"
    gets.chomp.downcase
  end

  def choose_weapon(rules_of_game)
    available_weapons = rules_of_game.available_weapons
    choice = input(available_weapons)
    available = valid?(choice, available_weapons)
    while !available do
      puts "\n'#{choice}' is not an option."
      choice = input(available_weapons)
      available = valid?(choice, available_weapons)
    end
    @weapon = choice
  end

  def wins_a_round
    @wins += 1
  end

  def ties_a_round
    @ties += 1
  end

  def loses_a_round
    @losses +=1
  end

end