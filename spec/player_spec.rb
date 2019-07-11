require 'player.rb'

describe Player do

  describe "#name" do
    it "returns the name of the player" do
      player1 = Player.new("Harry")
      expect(player1.name).to eq("Harry")
    end
  end

  describe "#health_points" do
    it "returns the health of the player" do
      player1 = Player.new("Harry")
      expect(player1.health_points).to eq(100)
    end
  end

  describe "#attack" do
    context 'when the player attacks' do
      it 'reduces health_points of the player' do
        player1 = Player.new("Harry")
        player1.reduce_health
        expect(player1.health_points).to eq(90)
      end
    end
  end


end