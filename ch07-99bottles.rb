# 99 bottles song lyrics

bot = ' bottles of beer'
wall = ' on the wall.'
take = 'Take one down, pass it around.'

i = 99
while i > 0
  if i > 2
    puts (i.to_s + bot + wall)
    puts (i.to_s + bot +'.')
    puts take
    puts ((i - 1).to_s + bot + wall)
  elsif i == 2
    puts (i.to_s + bot + wall)
    puts (i.to_s + bot +'.')
    puts take
    puts ((i - 1).to_s + ' bottle of beer' + wall)
  elsif i == 1
    puts (i.to_s + ' bottle of beer' + wall)
    puts (i.to_s + ' bottle of beer.')
    puts take
    puts 'There\'s no more bottles of beer on the wall.'
  end
  puts ''
  i = i - 1
end