#puts self

#var1 = 'stop'
#var2 = 'deliver repaid desserts'
#var3 = '....TCELES B HSUP A magic spell?'

#puts var1.reverse
#puts var2.reverse
#puts var3.reverse
#puts var1
#puts var2
#puts var3

#puts 'What is your full name?'
#name = gets.chomp
#puts 'Did you know there are ' + (name.length).to_s + ' characters in your name, ' + name + '?'

#puts 'What is your first name?'
#name1 = gets.chomp
#puts 'What is your middle name?'
#name2 = gets.chomp
#puts 'What is your last name?'
#name3 = gets.chomp
#fullname = name1+name2+name3
#puts 'Did you know that there are ' + (fullname.length).to_s + ' letters in all your names combined?'

#letters = 'aAbBcCdDeE'
#puts letters.upcase
#puts letters.downcase
#puts letters.swapcase
#puts letters.capitalize
#puts ' a'.capitalize
#puts letters

#line_width = 50
#puts ('Old Mother Hubbard'.center(line_width))
#puts ('Sat in her cupboard'.center(line_width))
#puts ('Eating her curds and whey,'.center(line_width))
#puts ('When along came a spider'.center(line_width))
#puts ('Who sat down beside her'.center(line_width))
#puts ('And scared her poor shoe dog away.'.center(line_width))

#line_width = 40
#str = '---> text <---'
#puts (str.ljust(line_width))
#puts (str.center(line_width))
#puts (str.rjust(line_width))
#puts (str.ljust(line_width/2) + str.rjust(line_width/2))

#Angry Boss Program
#question = 'What do you want?'
#fired = 'You\'re fired!!!!'

#puts question.upcase
#answer = gets.chomp
#puts ('Whaddaya mean "' + answer + '?!? ' + fired).upcase

#contents Program
chap_width = 60
page_width = 7
numb_width = 3

cont_width = chap_width + page_width + numb_width
page = 'page'.ljust(page_width)

title = 'Table of Contents'
chap1 = 'Chapter 1:  Getting Started'
pag_num1 = 1
chap2 = 'Chapter 2:  Numbers'
pag_num2 = 9
chap3 = 'Chapter 3:  Letters'
pag_num3 = 13

puts title.center(cont_width)
puts ''
puts chap1.ljust(chap_width) + page + pag_num1.to_s.rjust(numb_width)
puts chap2.ljust(chap_width) + page + pag_num2.to_s.rjust(numb_width)
puts chap3.ljust(chap_width) + page + pag_num3.to_s.rjust(numb_width)

puts ''
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365.25%7
puts (5-2).abs
puts (2-5).abs

puts ''
puts rand
puts rand
puts rand
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(1))
puts (rand(1))
puts (rand(1))
puts (rand(999999999999999999999999))
puts ('The weatherman says there is a')
puts (rand(101).to_s + '% chance of rain,')
puts ('but you can never trust a weatherman.')
puts (rand(2.5))

puts ''
srand 2005
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))

puts ''
srand 2005
puts (rand(100))
puts (rand(100))
puts (rand(100))

puts ''
srand 2005
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))