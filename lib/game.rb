require "pry"
require_relative "player.rb"
require_relative "rules.rb"

class Game

	attr_accessor :player1, :player2, :rules_of_game

	def initialize(player1:, player2:, rules_of_game:)
		@player1 = player1
		@player2 = player2
		@rules_of_game = rules_of_game
	end


end