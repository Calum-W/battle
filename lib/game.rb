require 'player'

class Game
  DEFAULT_DAMAGE = 10

  def attack(victim, amount = DEFAULT_DAMAGE)
    victim.hp -= DEFAULT_DAMAGE
  end
end
