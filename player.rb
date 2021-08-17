class Player
  attr_accessor :number, :lives

  def initialize(num, lives)
    @number = num
    @lives = lives
  end

  def alive?
    @lives > 0
  end
end
