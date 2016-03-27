require_relative "test_helper"
require_relative "../lib/player.rb"

class PlayerTest < Minitest::Test
# name:, wins:, losses:, ties:
  def test_can_be_created_under_normal_circumstances
    player = Player.new(name: "Rumpelstiltskin")
    refute_nil(player)
  end

  def test_name_getter
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal("Rumpelstiltskin", player.name)
  end

  def test_wins_getter
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.wins)
    player.wins = 3
    assert_equal(3, player.wins)
  end

  def test_losses_getter
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.losses)
    player.losses = 1
    assert_equal(1, player.losses)
  end

  def test_ties_getter
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.ties)
    player.ties = 1
    assert_equal(1, player.ties)
  end

  def test_wins_a_round
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.wins)
    player.wins_a_round
    assert_equal(1, player.wins)
  end
  
  def test_loses_a_round
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.losses)
    player.loses_a_round
    assert_equal(1, player.losses)
  end

  def test_ties_a_round
    player = Player.new(name: "Rumpelstiltskin")
    assert_equal(0, player.ties)
    player.ties_a_round
    assert_equal(1, player.ties)
  end

end