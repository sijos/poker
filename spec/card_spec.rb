require 'card'

describe Card do
  subject(:test_card) { Card.new(:king, :clubs) }

  describe '#initialize' do
    it "sets the card's value" do
      expect(test_card.value).to eq(:king)
    end

    it "sets the card's suit" do
      expect(test_card.suit).to eq(:clubs)
    end
  end

  describe '#compare' do
    let(:low_card) { Card.new(:jack, :hearts) }
    let(:high_card) { Card.new(:ace, :spades) }

    it "recognizes card equality" do
      expect(test_card.compare(test_card)).to eq(0)
    end

    it "recognizes high cards" do
      expect(test_card.compare(low_card)).to eq(1)
    end

    it "recognizes low cards" do
      expect(test_card.compare(high_card)).to eq(-1)
    end
  end

end
