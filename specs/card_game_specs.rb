require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative '../card_game'
require_relative '../card'

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Two", 2)
    @card2 = Card.new("Four", 4)
    @card3 = Card.new("Ace", 1)
    @cards_deck = [@card1, @card2, @card3]
    @CardGame = CardGame.new
  end

  def test_check_for_ace
    assert_equal( false, @CardGame.checkforAce(@card1) )
  end

  def test_find_highest_card
    assert_equal( @card2, @CardGame.highest_card(@card1, @card2) )
  end

  def test_check_cards_total
    result = "You have a total of 7"
    assert_equal( result, @CardGame.cards_total(@cards_deck) )
  end
  
end


