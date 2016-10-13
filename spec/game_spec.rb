require 'game'

describe Game do
  let(:player_1) { Player.new("player_1") }
  let(:player_2) { Player.new("player_2") }
  subject(:game) { described_class.new(player_1, player_2)}

  it 'reduces a player\'s hit points after an attack' do
    expect{game.attack(player_2)}.to change{player_2.hit_points}.by(-(Player::DEDUCT_POINTS))
  end

end
