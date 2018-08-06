require 'minitest/autorun'
require_relative '../models/rps.rb'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "paper")
    @game2 = Game.new("rock", "scissors")
    @game3 = Game.new("paper", "scissors")
    @game4 = Game.new("rock", "rock")

  end

  def test_paper_wins
    assert_equal("paper wins!", @game1.play_hand)
  end

  def test_rock_wins
    assert_equal("rock wins!", @game2.play_hand)
  end

  def test_scissors_wins
    assert_equal("scissors wins!", @game3.play_hand)
  end
  
  def test_draw
    assert_equal("draw!", @game4.play_hand)
  end
end
