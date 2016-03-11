# Program to make a 'chime' sound for each hour that has passed already today

def chime(&sound)
  x=Time.new.hour
  if x> 12
    x -= 12
  end
  x.times{sound.call}
end

chime do
  puts "ding"
end

i = 1
chime do
  puts "It is #{i} o'clock!"
  i += 1
end

chime do
 puts 'Do you know what time it is?'
 puts 'CHIME!'
end
