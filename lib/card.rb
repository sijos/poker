class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def compare(other)
    my_val = VALUE_LIST.index(value)
    other_val = VALUE_LIST.index(other.value)
    my_val <=> other_val
  end

  private

  VALUE_LIST = %i(one two three four five six seven eight nine ten jack queen king ace)
end
