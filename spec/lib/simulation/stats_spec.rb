# frozen_string_literal: true

RSpec.describe TheMontyHallParadox::Statistics do
  it 'returns wins_with_changing' do
    stats = described_class.new
    expect(stats.wins_with_changing).to eq(0)
  end

  it 'returns wins_without_changing' do
    stats = described_class.new
    expect(stats.wins_without_changing).to eq(0)
  end

  it 'shows result' do
    stats = described_class.new
    expect(stats.show_result(1)).to be_an_instance_of(Array)
  end
end
