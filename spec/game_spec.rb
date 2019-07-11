require 'game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double 'Player' }
  
  describe "#attack" do
    it "attacks the opponent" do
      expect(player1).to receive(:reduce_health)
      subject.attack(player1)
    end
  end
end