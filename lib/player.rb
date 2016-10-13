class Player

  attr_reader :name, :hit_points
  DEDUCT_POINTS = 10

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def attack(player)
    player.receive_attack
  end

  def receive_attack
    @hit_points -= DEDUCT_POINTS
  end
  
end
