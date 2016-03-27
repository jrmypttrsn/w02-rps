require "pry"
require_relative "../lib/player.rb"
require_relative "../lib/rules.rb"

def create_a_player
  puts "\n\nCREATE A NEW PLAYER\n"
  print "\nWhat is your? "
  name = gets.chomp

  Player.new(name: name)
end



puts "\n\nROCK.PAPER.SCISSORS.\nLET'S DO THIS.\n"
