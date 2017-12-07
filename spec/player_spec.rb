require "player"

describe Player do
  subject(:mortimer) { Player.new('Mortimer') }
  let(:reginald) { Player.new('Reginald') }

  describe "#name" do
    it "should return the player's name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(mortimer.hp).to eq described_class::STARTING_HP
    end
  end
end
