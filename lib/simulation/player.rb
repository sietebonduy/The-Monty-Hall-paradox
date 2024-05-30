# frozen_string_literal: true

module TheMontyHallParadox
  class Player
    def self.select_door(_doors)
      rand(0..2)
    end

    def self.select_another_door(_doors, c_door, o_door)
      (Set.new([0, 1, 2]) - Set.new([c_door, o_door])).to_a.first
    end
  end
end
