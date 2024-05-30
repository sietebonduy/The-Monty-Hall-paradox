# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Car do
  it 'returns won' do
    car = described_class.new
    expect(car.won).to be(true)
  end
end
