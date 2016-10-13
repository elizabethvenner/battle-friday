require 'game'

describe Game do
  let(:player_1) { Player.new("player_1") }
  let(:player_2) { Player.new("player_2") }
  subject(:game) { described_class.new(player_1, player_2)}

  it 'reduces a player\'s hit points after an attack' do
    expect{game.attack(player_2)}.to change{player_2.hit_points}.by(-(Player::DEDUCT_POINTS))
  end

  it 'returns player_1\'s name' do
    expect(game.player_1_name).to eq "player_1"
  end

  it 'returns player_1\'s hit points' do
    expect(game.player_1_hit_points).to eq 100
  end

  it 'returns player_2\'s name' do
    expect(game.player_2_name).to eq "player_2"
  end

  it 'returns player_2\'s hit points' do
    expect(game.player_2_hit_points).to eq 100
  end
end
