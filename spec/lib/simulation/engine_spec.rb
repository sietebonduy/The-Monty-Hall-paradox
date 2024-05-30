# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Engine do
  let(:engine) { TheMontyHallParadox::Engine.new }

  describe '#get_doors' do
    it 'should return an array of doors with one car and two goats' do
      doors = engine.send(:get_doors)
      expect(doors.count { |door| door.is_a?(TheMontyHallParadox::Car) }).to eq(1)
      expect(doors.count { |door| door.is_a?(TheMontyHallParadox::Goat) }).to eq(2)
    end
  end
end