class Player

  attr_reader :name, :hit_points
  DEDUCT_POINTS = 10
  START_POINTS = 30

  def initialize(name)
    @name = name
    @hit_points = START_POINTS
  end

  def receive_attack
    @hit_points -= DEDUCT_POINTS
  end

end
