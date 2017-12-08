require 'Game'

describe Game do
  subject(:game) { Game.new }
  let(:game2p) { Game.new({ :name1 => "ron", :name2 => "dave" }) }
  let(:mortimer) { Player.new('Mortimer') }
  let(:reginald) { Player.new('Reginald') }

  describe '#initialize' do
    it 'accepts two player instances, setting a player 1' do
      expect(game2p.P1.name).to eq "ron"
    end
    it 'accepts two player instances, setting a player 2' do
      expect(game2p.P2.name).to eq "dave"
    end
  end

  describe '#attack' do
    it 'reduces the enemies HP by a given amount' do
      expect{ game2p.attack(game2p.P2) }.to change { game2p.P2.hp }.by -described_class::DEFAULT_DAMAGE
    end
  end
end
