class Card
  attr_accessor :rank, :suit

  def initialize(rank,suit)
      @rank = rank
      @suit = suit
  end

  def output_card
      puts "#{self.rank} of #{self.suit}"
  end
end

class Deck
  def initialize
    @cards = []
    number = ['King', 'Queen', 'Jack', 'Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10']
    type = ['Diamonds', 'Hearts', 'Spades', 'Clubs']
    @cards << Card.new(number.sample, type.sample)
    end

  def deal
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
deck.deal




