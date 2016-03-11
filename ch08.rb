#names = ['Ada', 'Belle', 'Chris']

#puts names
#puts
#puts names[0]
#puts names[1]
#puts names[2]
#puts names[3]

debug = []

debug[0] = 'duck'
debug[1] = 'rubber'
debug[2] = debug[1] + ' ' + debug[0]

debug.each do |bug|
  puts 'I love my ' + bug
end

10.times do
  puts debug[2]
end

my_fav_things = ['rubber ducks', 'rubies', 'rails', 'objects']

puts my_fav_things.join(', ')

test = [debug, [0,1,2,3]]

puts test