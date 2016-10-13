require 'player'

describe Player do
  subject(:player_1) { described_class.new("player_1") }

  it 'returns its name' do
    expect(player_1.name).to eq "player_1"
  end

end
