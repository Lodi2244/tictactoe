module Tictactoe
  # A cell contains a value, initialized at nill
  # we need to access and change it outside Cell
  class Cell

    attr_accessor :value

    def initialize(value="")
      @value = value
    end
  end
end
