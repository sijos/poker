require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it "initializes with an empty deck" do
      expect(deck.card_stack).to eq([])
    end
  end

  describe '#populate' do
    before(:each) { deck.populate }

    it "creates a new deck of size 52" do
      expect(deck.card_stack.size).to eq(52)
    end

    it "only contains card objects" do
      expect(deck.card_stack.first).to be_a(Card)
    end
  end

  describe '#shuffle' do
    it "returns the deck in a random order"

    it "modifies the deck instance variable"
  end

  describe '#draw' do
    it "removes the top card off the deck"

    it "returns the top card"
  end

end
