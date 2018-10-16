module Tictactoe
  # A player as a name and a sign assignated
  # We need to track this args so attr_reader
  class Player
    attr_reader :name, :sign

    def initialize(input)
      # will take arguments from hash
      @name = input.fetch(:name)
      @sign = input.fetch(:sign)
    end
  end

end
