require 'game.rb'

describe Game do
  let(:player1) { double 'Player' }
  let(:player2) { double 'Player' }
  subject(:game) { described_class.new(player1, player2) }

  describe "#attack" do
    it "attacks the opponent" do
      expect(player1).to receive(:reduce_health)
      subject.attack(player1)
    end
  end
  describe "#player1" do
    it "returns the first player" do
      expect(game.player1).to eq player1
    end
  end
  describe "#player2" do
    it "returns the first player" do
      expect(game.player2).to eq player2
    end
  end
end
