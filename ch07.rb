#puts 1 > 2
#puts 2 > 1

#puts 1==1
#puts 2!=1
#puts 'cat' < 'dog'
#puts 'bug lady' < 'Xander'
#puts 'bug lady'.downcase < 'Xander'.downcase

#puts 2 <10
#puts '2' < '10'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Aimee'
	puts 'What a loverly name!!!'
else puts (name + ' is a fair enough name, but not as good as Aimee.')
end
