class Integer
  def fact
    factorial = 1
    i = self
    while i > 0
      factorial *= i
      i -= 1
    end
    factorial
  end
end

puts 1.fact
puts 2.fact
puts 3.fact
puts 4.fact
puts 5.fact
puts 6.fact
puts 7.fact