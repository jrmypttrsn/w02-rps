require_relative "test_helper"
require_relative "../lib/player.rb"

class Player < Minitest::Test
# name:, wins:, losses:, ties:
	def test_can_be_created_under_normal_circumstances
		player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties:, 1)
		refute_nil(player)
	end

	def test_name_getter
		player = Player.new(name: "Rumpelstiltskin", wins: 3, losses: 1, ties:, 1)
		assert_equal("Rumpelstiltskin", player.name)
	end

end