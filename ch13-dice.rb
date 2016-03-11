class Dice
  def initialize
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat(number=6)
    if (number >= 1) && (number <=6)
      @number_showing = number
    else
      @number_showing = 6
    end
  end
end

x = Dice.new
puts x.showing
puts x.roll
puts x.showing
puts x.cheat
puts x.cheat(4)
puts x.cheat(100)