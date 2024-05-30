# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Goat do
  it 'returns won' do
    goat = described_class.new
    expect(goat.won).to be(false)
  end
end
