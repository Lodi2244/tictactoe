module Tictactoe
  # A board init a grid and get grid values
  # it check also if a game is win or draw
  # it also can change cell value
  # Grid exemple: [["","",""], ["","",""], ["","",""]]
  class Board

    attr_reader :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end


    def formatted_grid
      # give a cool display of our grid
      grid.each do |row|
        puts row.map { |cell| cell.value.empty? ? "| _ |" : "| #{cell.value} |"}.join(" ")
      end
    end

    def get_cell(x, y)
      # take cell value in our nested grid
      grid[x][y]
    end

    def set_cell(x, y, value)
      # change cell value in our nested grid
      get_cell(x,y).value = value
    end

    # Return winner if there is a winner, draw if drawm, false if game is not over
    def game_over
      return :winner if winner?
      return :draw if draw?
    end
    
    # Flatten the grid and try none_empty?. Return true if none is empty
    def draw?
      grid.flatten.map { |cell| cell.value }.none_empty?
    end

    def winning_positions
      # Here is all the possibilites to win
      grid + # Horizontal wins
      grid.transpose + # Vertical wins
      diagonals #two diagonals
    end

    def diagonals
      [
        [get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
        [get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
      ]
    end

    def winner?
      # iterate winning_positions and returns true if all values
      # in a winiing position are the same
      winning_positions.each do |wining_position|
        next if winning_position_values(wining_position).all_empty?
        return true if winning_position_values(wining_position).all_same?
      end
      false
    end

    def winning_position_values(winning_position)
      winning_position.map {|cell| cell.value}
    end

    # Private methods

    private

    # a default grid, compose by 3 rows, 3 columns of BoardCase object
    def default_grid
      Array.new(3) { Array.new(3) { BoardCase.new } }
    end
  end
end
