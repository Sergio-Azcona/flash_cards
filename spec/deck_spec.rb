require 'rspec'
require './lib/card'
require './lib/turn'
require './lib/deck'

RSpec.describe Deck do
    before :each do
        @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        # require 'pry'; binding.pry
        @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        @cards = Deck.new([@card_1, @card_2, @card_3])
        @deck = Deck.new(@cards)
        # @turn = Turn.new("Juneau", @card_1)
        
    end

    it 'class should exist' do
        expect(@deck).to be_instance_of Deck
    end

    it 'should' do
        expect(@deck.count).to eq([])
    end


end