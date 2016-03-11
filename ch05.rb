#variables

#var1 = 2
#var2 = '5'
#puts var1.to_s + var2
#puts var1 + var2.to_i

#puts '15'.to_f
#puts '99.999'.to_f
#puts '99.999'.to_i
#puts ' '
#puts '5 is my favourite number!'.to_i
#puts 'Your momma did.'.to_f
#puts 'This string contains 7'.to_i
#puts ' '
#puts 'stringy'.to_s
#puts 3.to_i

#gets Greeting
puts ''
puts 'Hello there, my name is Powershell. I\'m sure you have a pretty name'
puts 'What\'s your first name?'
first_name = gets.chomp
puts 'I know another person named ' + first_name + '.'
puts 'What\'s your surname?'
last_name = gets.chomp
puts 'And you probably have a middle name, what is it?'
middle_name = gets.chomp
puts 'WoW! What a loverly name.'
puts 'Pleased to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '.'
puts ''
puts 'I think we might have some things in common. What\'s your favourite number?'
fav_num = gets.chomp
new_num = (fav_num.to_i + 1).to_s
puts 'Hmm, that\'s a good number. My favourite number is ' + new_num + '.'
puts 'I don\'t supose you\'d want to change your favourite number to a bigger and better number?'
puts 'Afterall, ' + new_num + ' is such a pretty number.'