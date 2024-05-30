# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Player do
  describe '#select_door' do
    it 'should return door in range' do
      expect(described_class.select_door).to be_between(0, 2).inclusive
    end
  end

  describe '#select_another_door' do
    it 'should return the remaining door' do
      expect(described_class.select_another_door(0, 1)).to eq(2)
      expect(described_class.select_another_door(0, 2)).to eq(1)
      expect(described_class.select_another_door(1, 0)).to eq(2)
      expect(described_class.select_another_door(1, 2)).to eq(0)
      expect(described_class.select_another_door(2, 0)).to eq(1)
      expect(described_class.select_another_door(2, 1)).to eq(0)
    end
  end
end
