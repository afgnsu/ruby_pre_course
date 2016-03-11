# Program to get a list of items input via the command line,
# then sort them alphabetically, & put them back out

input = []
input2 = []

puts
puts 'This program will alphabetically sort a bunch of words you provide it.'
puts 'Please enter the words to sort, one at a time, and hit \'enter\' inbetween each word.'
puts 'Hit \'enter\' again after you have finished entering all your words.'

while true
  temp = gets.chomp
  if temp == ''
    break
  end
  input.push temp
end

# long method using knoweldge from textbook
# note: this loses the original cases of the input objects
input.each do |inp|
input2.push inp.downcase  #input2 now stores input objects in same order, but all lowercase
end

input2 = input2.sort
puts input2

puts

# short method using new techniques not covered in text
# note: this maintains the case of the original input
input3=input.sort_by {|x| x.downcase}
puts input3