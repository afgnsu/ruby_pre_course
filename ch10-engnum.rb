# program to translate digits of a number into writen out english words
# eg 35 -> thirty-five

def english_number number
  if number < 0
    return 'Please enter a non-negative number.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones = ['one','two','three','four','five','six','seven','eight','nine']
  tens = ['ten','twenty','thirty','fourty','fifty',
          'sixty','seventy','eighty','ninety']
  teens = ['eleven','twelve','thirteen','fourteen','fifteen',
          'sixteen','seventeen','eighteen','nineteen']
  big_num = [['trillion', 10**12],
              ['billion', 10**9],
              ['million', 10**6],
              ['thousand', 10**3]]

  left = number

  i = 0
  while i < big_num.size
    write = left/big_num[i][1]
    left = left%big_num[i][1]

  if write > 0
    temp = english_number write
    num_string = num_string + temp + ' ' + big_num[i][0]
    if left > 0
      num_string = num_string + ' '
    end
  end
    i = i + 1
  end
##
  write = left /100
  left = left%100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left /10
  left = left%10

  if write > 0
    if ((write ==1)&&(left>0))
      num_string = num_string + teens[left - 1]
      left = 0
    else
      num_string = num_string + tens[write-1]
    end
    if left >0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones[write-1]
  end
  num_string
end

puts
puts english_number 50
puts english_number 100
puts english_number 129
puts english_number 215
puts english_number 35678
puts english_number 0
puts english_number 1000
puts english_number 10000
puts english_number -5
puts english_number 948236746
puts english_number 948236746923
puts english_number 948236746923845
puts english_number 10**12