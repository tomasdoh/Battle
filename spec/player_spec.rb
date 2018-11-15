require 'player'

describe Player do
  let(:tomas) { Player.new('Tomas') }
  let(:luca) { Player.new('Luca') }

  describe '#name' do
    it 'returns a player\'s name' do
      expect(tomas.name).to eq "Tomas"
    end
  end

  describe '#hit_points' do
      it 'returns the hit points' do
        expect(luca.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

  describe '#attack' do
    it 'damages the player' do
      expect(tomas).to receive(:receive_damage)
      luca.attack(tomas)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { luca.receive_damage }.to change { luca.hit_points }.by(-10)
    end
  end

end
