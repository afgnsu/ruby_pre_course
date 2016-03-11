# program to manually sort an array of words from smallest to largest
# using recursion (with a wrapper method)
puts
puts 'This program will sort words for you alphabetically.'
puts 'Please enter your words, one at a time, and hit enter in-between words.'
puts 'Once you have finished entering words, hit enter twice.'

array = []

while true
  a = gets.chomp
  if a == ''
    break
  else
  array.push a
  end
end

def sort array
  recursive_sort array, []
end

def recursive_sort unsort_array, sorted_array
  #! Later Improvement: make it sort lower and upper cases
  # eg if 'B' and 'b' both entered, B will come first
  if unsort_array == []
    return sorted_array
  else
    i = 1
    new_sort = []
    smallest = unsort_array[0]
    sorted_array.push smallest # add the smallest value to the sorted_array
    while i<unsort_array.size
      if unsort_array[i].downcase < smallest.downcase # new word is smaller
        new_sort.push smallest
        sorted_array.pop
        smallest = unsort_array[i]
        sorted_array.push smallest
      else # new word not smaller
        new_sort.push unsort_array[i]
      end
      i = i +1
    end
  end
  recursive_sort new_sort, sorted_array
end

output = sort array
puts
puts 'Your sorted words are:'
puts output