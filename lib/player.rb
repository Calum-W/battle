class Player

  attr_reader :name
  attr_accessor :hp

  STARTING_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def attack(victim)
    victim.receive_damage(DEFAULT_DAMAGE)
  end

  def receive_damage(amount)
    @hp -= DEFAULT_DAMAGE
  end
end
