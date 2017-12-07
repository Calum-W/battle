require 'Game'

describe Game do
  subject(:game) { Game.new }
  let(:mortimer) { Player.new('Mortimer') }
  let(:reginald) { Player.new('Reginald') }

  describe '#attack' do
  end
  describe '#attack' do
    it 'reduces the enemies HP by a given amount' do
      expect{ game.attack(reginald) }.to change { reginald.hp }.by -described_class::DEFAULT_DAMAGE
    end
  end
end
