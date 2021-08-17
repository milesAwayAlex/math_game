require './player'
require './question'

class Game
  def initialize(score)
    @init_score = score
    @pl1 = Player.new(1, @init_score)
    @pl2 = Player.new(2, @init_score)
    @q = nil
    @queue = [@pl1, @pl2].shuffle
  end

  def game_on?
    @pl1.alive? && @pl2.alive?
  end

  def get_winner
    @pl1.alive? ? @pl1 : @pl2
  end

  def new_question
    @q = Question.new
  end

  def switch
    @queue.rotate!
  end

  def show_score
    puts "P#{@pl1.number}: #{@pl1.lives}/#{@init_score} vs P#{@pl2.number}: #{@pl2.lives}/#{@init_score}"
  end

  def game_loop
    puts 'NEW TURN'
    show_score
    new_question
    @q.ask(@queue.first)
    switch
  end

  def play
    puts 'GAME ON!'
    while game_on?
      game_loop
    end
    winner = get_winner
    puts "Player #{winner.number} wins with a score of #{winner.lives}/#{@init_score}"
    puts "IT'S OVER!"
  end

end

game = Game.new(3)
game.play
