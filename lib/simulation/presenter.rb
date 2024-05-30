# frozen_string_literal: true

module TheMontyHallParadox
  class Presenter
    def self.select_door_with_goat(doors, current_door)
      door_numbers = (Set.new([0, 1, 2]) - Set.new([current_door])).to_a

      if doors[current_door].is_a?(Car)
        door_numbers.sample
      else
        loop do
          number = door_numbers.sample
          return number if doors[number].is_a?(Goat)
        end
      end
    end
  end
end
