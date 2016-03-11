# asks for an input number between 1 and 3000, and outputs it in OLD roman numerals

puts
puts 'Please enter a number between 1 and 3000 (inclusive):'

while true
  number = (gets.chomp).to_i

  if (number > 0) && (number <= 3000)
    break
  end

  puts 'Your number must be between 1 and 3000. Please enter a new number.'
end

remain = number # input does not get altered below

# inputs are; the current number remaining
# and the digit '1000', '50' etc you are up translating to a roman letter
def roman (remainder, digit)
  if remainder < digit  # ie you do not have any of this roman letter
    x = nil.to_i
  else
  x = remainder / digit
  end

  y = remainder % digit

  return [x,y]
end

#new efficient method
digits = [1000,500,100,50,10,5]
letters = ['M','D','C','L','X','V','I']

output = []
i = 0

while i < 6
  output [i], remain = roman remain, digits [i]
  i = i + 1
end

output [6] = remain

puts
puts 'Your old-roman number equivalent is:'

print = []
i=0
while i <=6
  print[i] = letters[i] * output [i]
  i = i + 1
end
puts print.join

# old method - sloppier
#thou = roman number, 1000
#fivehund = roman thou[1], 500
#hund = roman fivehund[1], 100
#fifties = roman hund[1], 50
#tens = roman fifties[1], 10
#fives = roman tens[1], 5
#ones = fives [1]

#puts
#puts 'Your old-roman number equivalent is:'
#puts 'M' *thou[0] + 'D' * fivehund[0] +
#    'C' * hund[0] + 'L' * fifties[0] +
#    'X' * tens[0] + 'V' * fives[0] + 'I' * ones

#puts 'M' *output[0] + 'D' * output[1] +
#    'C' * output[2] + 'L' * output[3] +
#    'X' * output[4] + 'V' * output[5] + 'I' * output[6]