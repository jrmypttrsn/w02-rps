require "pry"
require_relative "lib/player.rb"
require_relative "lib/rules.rb"
require_relative "lib/game.rb"


puts "ROCK.PAPER.SCISSORS.\n
LET'S DO THIS.\n\n"\

def create_player
	name = gets.chomp
	player = Player.new(name: name)
end

puts "Player 1, enter your name:\n"
player1 = create_player
puts "Player 2, enter your name:\n"
player2 = create_player

rules_of_game = Rules.new(player1: player1, player2: player2)

game = Game.new(rules_of_game: rules_of_game, player1: player1, player2: player2)
