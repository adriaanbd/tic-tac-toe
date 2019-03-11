module OurTicTacToe
  class Player
    attr_reader :turn, :name
    def initialize(turn, name)
      @turn = turn
      @name = name
    end
  end
end
