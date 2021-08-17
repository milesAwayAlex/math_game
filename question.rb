class Question
  attr_reader :numA, :numB
  
  def initialize
    @numA = rand(1..20)
    @numB = rand(1..20)
  end

  def ask(pl)
    puts "Player #{pl.number}: what's #{numA} + #{numB}?"
    print '> '
    ans = $stdin.gets.chomp
    if ans.to_i != (numA + numB)
      pl.lives -= 1
      return puts 'Wrong!' 
    end
    puts 'Correct!'
  end

end
