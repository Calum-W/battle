class Player

  attr_reader :name
  attr_accessor :hp

  STARTING_HP = 100

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end
end
