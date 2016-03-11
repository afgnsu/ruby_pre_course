# asks for an input number between 1 and 3000, and outputs it in NEW roman numerals

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

digits = [1000,500,100,50,10,5,1]
letters = ['M','D','C','L','X','V','I']

# inputs are; the current number remaining
# and the digit '1000', '50' etc you are up translating to a roman letter
def roman (remainder, digit)
  if remainder < digit  # ie you do not have any of this current roman letter
    x, y, z = nil
    a = remainder
  else # need to evaluate for current roman letter
    if remainder.to_s[/\d/] == '9'
      x = z = 1
      y = nil
      a = remainder % (digit/5)
    elsif remainder.to_s[/\d/] == '4'
      x = nil
      y = z = 1
      a = remainder % digit
    else # does not begin with 4 or 9, and can be processed normally
      x, z = nil
      y = remainder / digit
      a = remainder % digit
    end
  end  

  [x,y,z,a]
  # x = number of times to print next roman letter
  # y = number of times to print current roman letter
  # z = number of times to print previous roman letter

  # a = remainder for next call
end

output = [] # stores arrays of x,y,z,a output from roman
i = 0

puts
puts 'Your new-roman number equivalent is:'

# run method for each value in digits []
while i <=6
  output [i] = roman remain, digits [i]
  remain = output [i][3]
  i = i + 1
end

# print {next * x + current * y + previous * z } for each iteration of letter

print = []
temp = []
i=0

while i <=6 # for each roman letter
  if i == 6
    temp [0] = nil
  else
    temp[0] = letters[i+1] * output [i][0].to_i
  end
  
  temp[1] = letters[i] * output [i][1].to_i

  if i == 0
    temp [2] = nil 
  else
    temp[2] = letters[i-1] * output [i][2].to_i
  end

  print[i] = temp.join
  i = i + 1
end

puts print.join