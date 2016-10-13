class Game

  attr_reader :player_1, :player_2


  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.receive_attack
  end

  def player_1_name
    @player_1.name
  end

  def player_1_hit_points
    @player_1.hit_points
  end

  def player_2_name
    @player_2.name
  end

  def player_2_hit_points
    @player_2.hit_points
  end

end
