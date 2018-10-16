module Tictactoe
  # Game class manage moves and switch the player each turn
  class Game

    attr_reader :players, :board, :current_player
    # Init with an arrays of players and a new Board object
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      # shuffle the first player in players list
      @current_player, @other_player = players.shuffle
    end

    # current player will become other_player and vice-versa
    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    # ask the player a human move
    def ask_move
      "#{current_player.name}: Enter a number between 1 and 9"
    end

    # get the move from player and pass it to human_move_to_coord
    def get_move(user_move = gets.chomp)
      human_move_to_coord(user_move)
    end

    # send a message if board.game_over
    def game_over_message
      return "#{current_player.name} WIN" if board.game_over == :winner
      return "The game is a tie" if board.game_over == :draw
    end

    def play
      puts "#{current_player.name} is the first player"
      while true
        board.formatted_grid
        puts ""
        puts ask_move
        x, y = get_move
        board.set_cell(x, y, current_player.sign)
        if board.game_over
          puts game_over_message
          board.formatted_grid
          return
        else
          switch_players
        end
      end
    end

    private

    # Player will give 1,2,3 we have to translate it to our nested arrays
    def human_move_to_coord(human_move)
      trad = {
        "1" => [0, 0], #upper left corner
        "2" => [0, 1],
        "3" => [0, 2],
        "4" => [1, 0],
        "5" => [1, 1],
        "6" => [1, 2],
        "7" => [2, 0],
        "8" => [2, 1],
        "9" => [2, 2] # down right corner
      }
      trad[human_move] #return position in our nested array
    end
  end
end
