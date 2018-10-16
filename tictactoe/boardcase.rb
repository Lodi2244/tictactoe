module Tictactoe
  # A cell contains a value, initialized at nill
  # we need to access and change it outside BoardCase
  class BoardCase

    attr_accessor :value

    def initialize(value="")
      @value = value
    end
  end
end
