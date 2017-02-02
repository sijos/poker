require 'card'

describe Card do
  subject(:test_card) { Card.new(:king, :clubs) }

  describe '#initialize' do
    it "sets the card's value"

    it "sets the card's suit"
  end

  describe "#<=>" do
    let(:low_card) { Card.new(:jack, :hearts) }
    let(:high_card) { Card.new(:ace, :spades) }

    it "recognizes card equality"

    it "recognizes high cards"

    it "recognizes low cards"
  end

end
