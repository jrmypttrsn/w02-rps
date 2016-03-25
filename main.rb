require "pry"
require_relative "../lib/player.rb"

  puts "\n\nROCK.PAPER.SCISSORS.\nLET'S DO THIS.\n"


def create_player1
  print "\nPlayer 1, what is your name? "
  name = gets.chomp

  Player1.new(name: )
end

def create_player2
  print "\nPlayer 2, what is your name? "
  name = gets.chomp

  Player2.new(name: )
end

def player_stats(player)
  puts "\n\nPLAYER STATISTICS\n"
  puts "Player 1's name is #{player1.name}."
  puts "Player 2's name is #{player2.name}."
  puts "#{player1.name} has won #{player1.wins} rounds, lost #{player1.losses} rounds, 
  	and tied #{player1.ties} rounds."
	puts "#{player2.name} has won #{player2.wins} rounds, lost #{player2.losses} rounds, 
  	and tied #{player2.ties} rounds."
end