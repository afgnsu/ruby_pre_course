# program to get an array and randomly shuffle its contents

puts
puts 'This program will randomly shuffle items for you.'
puts 'Please enter your items, one at a time, and hit enter in-between them.'
puts 'Once you have finished entering items, hit enter twice.'

array = []

while true
  a = gets.chomp
  if a == ''
    break
  else
  array.push a
  end
end

def random array
  recursive_rand array, []
end

def recursive_rand orig_array, random_array
  if orig_array == []
    return random_array
  else
    i = rand(orig_array.size)
    random_array.push orig_array[i]

    j = 0
    to_sort = []

    while j < orig_array.size
      if j == i # item is the one that was selected by random
      else
        to_sort.push orig_array[j]
      end
      j = j + 1
    end

    recursive_rand to_sort, random_array
  end
end

output = random array
puts
puts 'Your randomised items are:'
puts output