require "player"

describe Player do
  subject(:mortimer) { Player.new('Mortimer') }

  describe "#name" do
    it "should return the player's name" do
      expect(mortimer.name).to eq "Mortimer"
    end
  end

end
