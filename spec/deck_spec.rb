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
    let(:other_deck) { Deck.new.populate }
    before(:each) do
      deck.populate
      deck.shuffle
    end

    it "returns the deck in a random order" do
      expect(deck.card_stack).to match_array(other_deck.card_stack)
      expect(deck.card_stack).not_to eq(other_deck.card_stack)
    end

    it "modifies the deck instance variable"

  describe '#draw' do
    it "removes the top card off the deck" do
      deck.draw
      expect(deck.card_stack.size).to eq(51)
    end

    it "returns the top card"
  end

end
