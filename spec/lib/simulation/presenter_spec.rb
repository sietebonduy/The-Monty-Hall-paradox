# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Presenter do
  let(:car) { TheMontyHallParadox::Car.new }
  let(:goat) { TheMontyHallParadox::Goat.new }

  describe '#select_door_with_goat' do
    it 'should return door with a goat' do
      doors = [car, goat, goat]
      current_door = 0
      selected_door = described_class.select_door_with_goat(doors, current_door)
      expect([1, 2]).to include(selected_door)
      expect(doors[selected_door]).to be_a(TheMontyHallParadox::Goat)
    end
  end
end
