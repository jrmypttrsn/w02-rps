require_relative "test_helper"
require_relative "../lib/player.rb"

class Player < Minitest::Test
# name:, wins:, losses:, ties:
	def test_can_be_created_under_normal_circumstances
		player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)
		refute_nil(player)
	end

	def test_name_getter
		player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)
		assert_equal("Rumpelstiltskin", player.name)
	end

	def test_wins_getter
    player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)
    assert_equal(3, dog.rabbits_killed)
  end

  def test_win_another_round
    player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)
    
    player.win_another_round
    assert_equal(4, player.wins)
  end

  def test_lose_another_round
  	player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)
    
    player.win_another_round
    assert_equal(2, player.losses)
  end

  def test_tie_another_round
  	player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties: 1)

  	player.tie_another_round
  	assert_equal(2, player.ties)
  end
end