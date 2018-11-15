require 'player'

describe Player do
  let(:tomas) { Player.new('Tomas') }
  let(:luca) { Player.new('Luca') }

  describe '#name' do
    it 'returns a player\'s name' do
      expect(player.name).to eq "Tomas"
    end
  end



end
