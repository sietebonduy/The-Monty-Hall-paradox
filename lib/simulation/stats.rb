# frozen_string_literal: true

module TheMontyHallParadox
  class Statistics
    attr_accessor :wins_with_changing, :wins_without_changing

    def initialize
      @wins_with_changing = 0
      @wins_without_changing = 0
    end

    def show_result(num)
      [
        "Wins with changing: #{@wins_with_changing} (#{@wins_with_changing / num.to_f}%)",
        "Wins without changing: #{@wins_without_changing} (#{@wins_without_changing / num.to_f}%)"
      ]
    end
  end
end
