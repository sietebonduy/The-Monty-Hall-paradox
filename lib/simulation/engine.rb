# frozen_string_literal: true

require_relative 'car'
require_relative 'goat'
require_relative 'stats'
require_relative 'player'
require_relative 'presenter'

module TheMontyHallParadox
  class Engine
    def run
      number_of_games = ARGV.first
      stats = Statistics.new

      number_of_games.to_i.times do
        doors = get_doors

        current_door = Player.select_door
        opened_door = Presenter.select_door_with_goat(doors, current_door)
        changed_door = Player.select_another_door(current_door, opened_door)

        stats.wins_without_changing += 1 if doors[current_door].won
        stats.wins_with_changing += 1 if doors[changed_door].won
      end

      puts stats.show_result(number_of_games)
    end

    private

    def get_doors
      doors = []

      3.times do
        doors << Goat.new
      end

      random_position = rand(0..2)
      doors[random_position] = Car.new

      doors
    end
  end
end
