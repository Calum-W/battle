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

  describe '#attack' do
    it 'calls the method receive_damage on the player attacked' do
      expect(reginald).to receive(:receive_damage)
      mortimer.attack(reginald)
    end
  end


  describe '#receive damage' do
    it 'reduces the enemies HP by a given amount' do
      expect{ reginald.receive_damage(Player::DEFAULT_DAMAGE) }.to change { reginald.hp }.by -Player::DEFAULT_DAMAGE
    end
  end



end
