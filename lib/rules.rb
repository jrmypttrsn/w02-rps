require "pry"
require_relative "player.rb"

class Rules
	
	def initialize(player1:, player2:)
		@player1 = player1
		@player2 = player2
		@valid_weapon = ["rock", "paper", "scissors"]
	end

	def winner_decided	
		if player1_selection == "rock" && player2_selection == "scissors" || 
	    player1_selection == "scissors" && player2_selection == "paper" || 
	    player1_selection == "paper" && player2_selection == "rock"
	    result = "Player 1, WINS!"
	    @player1.wins_a_round

	  elsif player1_selection == "scissors" && player2_selection == "rock" || 
	    player1_selection == "paper" && player2_selection == "scissors" || 
	    player1_selection == "rock" && player2_selection == "paper"
	    result = "Player 2, WINS!"
	    @player2.wins_a_round

	  elsif player1_selection == player2_selection
	    result = "TIE. TRY AGAIN."
	  end
	  result
	end

	def play_single_round
		player1_selection = player_choice(@player1)
		player2_selection = player_choice(@player2)
		puts winner_decided(player1_selection, player2_selection)
	end

  def player_chooses_weapon(player)
	  puts "\n\n#{player.name}, choose your weapon:\n"
	  @available_weapons.each { |e| puts e}
	  player.choose_weapon(self)
  end

end