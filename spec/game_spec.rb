require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:tomas) { double :player }
  let(:luca) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(tomas).to receive(:receive_damage)
      game.attack(tomas)
    end
  end
end
