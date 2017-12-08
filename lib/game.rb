require_relative 'player'

class Game
  DEFAULT_DAMAGE = 10

  attr_reader :P1, :P2

  def initialize(args)
    @P1 = Player.new(args[:name1])
    @P2 = Player.new(args[:name2])
  end

  def self.create(args)
    @game = Game.new({ :name1 => args[:name1], :name2 => args[:name2] })
  end

  def self.instance
    @game
  end

  def attack(victim, amount = DEFAULT_DAMAGE)
    victim.hp -= DEFAULT_DAMAGE
  end
end
