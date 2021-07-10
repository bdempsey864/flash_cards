require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require './lib/game'

RSpec.describe Game do
  it 'is a game' do
    card_1 = Card.new("What is the capital of Maine?", "Augusta", :Geography)
    cards = [card_1]
    deck = Deck.new(cards)
    round = Round.new(deck)

    expect(Game.new(round)).to be_a Game
  end

  
end