require 'player'

describe Player do
  subject(:player_1) { described_class.new("player_1") }
  subject(:player_2) { described_class.new("player_2") }

  it 'returns its name' do
    expect(player_1.name).to eq "player_1"
  end

  it 'has its hit points reduced by attack' do
    expect{player_2.receive_attack}.to change{player_2.hit_points}.by(-(Player::DEDUCT_POINTS))
  end

end
