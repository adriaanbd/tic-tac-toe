module OurTicTacToe
  class Player
    attr_reader :turn, :name
    def initialize(turn, name)
      @turn = turn.capitalize
      @name = name.capitalize
    end
  end
end
