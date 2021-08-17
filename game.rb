require './player'
require './question'

class Game
  def initialize(score)
    @init_score = score
    @pl1 = Player.new(1, @init_score)
    @pl2 = Player.new(2, @init_score)
    queue = [@pl1, @pl2].shuffle
  end

end