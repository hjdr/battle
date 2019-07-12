require 'player.rb'

describe Player do
  let(:player) { described_class.new("Harry") }

  describe "#name" do
    it "returns the name of the player" do
      expect(player.name).to eq("Harry")
    end
  end

  describe "#health_points" do
    it "returns the health of the player" do
      expect(player.health_points).to eq(100)
    end
  end

  describe "#attack" do
    context 'when the player attacks' do
      it 'reduces health_points of the player' do
        player.reduce_health
        expect(player.health_points).to eq(90)
      end
    end
  end
   describe "#death" do
     it "sets instance variable 'dead' to true" do
       10.times{ player.reduce_health }
       expect(player.death).to eq true
     end
   end

end
