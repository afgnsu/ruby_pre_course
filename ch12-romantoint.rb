# Program to convert an inputted roman number eg MCCCXXXVII into an integer

roman_hash = {'I'=> 1, 'V' => 5, 'X' => 10, 'L' => 50,
                'C' => 100, 'D' => 500, 'M' => 1000}

def get_input(roman_hash)
  while true
    puts 'Please enter a roman number between I and MMMCMXCIX.'
    input = gets.chomp
    roman = input.upcase
    i = -1
    while i.abs <= input.size
      if !roman_hash.has_key?(roman[i]) #invalid character
        puts 'Your roman number cannot contain non-roman digits.'
        print 'Please re-enter a number using only'
        roman_hash.each {|d,v| print ", #{d}"}
        puts
        break
      end
      i -= 1
    end
    if (i.abs - 1) == input.size # all digits are roman values
      return roman
    end
  end
end

def convert_to_arabic(roman, roman_hash)
  roman_array = roman_hash.keys # ['I','V',...]
  
  # build value starting from end
  arabic_number = roman_hash[roman[-1]]
  i = -2
  dup_counter = 1 # records number same digit has occured in a row eg III
  while i.abs <= roman.size
  # check previous digit
    if roman_array.index(roman[i]) > roman_array.index(roman[i+1])
      # previous digit was lower, this is always valid
      arabic_number += roman_hash[roman[i]]
      dup_counter = 1 # reset duplicate counter to 1
    elsif ['V','L','D'].include?(roman[i+1])
      if roman_array.index(roman[i]) == roman_array.index(roman[i+1])
        puts 'You can not have multiple V, L or D in a row.'
        puts 'Please re-enter a valid roman number.'
        return false
      elsif roman_array.index(roman[i]) == (roman_array.index(roman[i+1]) -1)
        arabic_number -= roman_hash[roman[i]]
      else
        puts 'You have not entered a valid roman number.'
        return false
      end
    else #I,X,C,M
      if roman_array.index(roman[i]) == roman_array.index(roman[i+1])
        if dup_counter <3
          arabic_number += roman_hash[roman[i]]
          dup_counter += 1
        else
          puts 'You can not have more than 3 of the same letter in a row.'
          puts 'Please re-enter a valid roman number.'
          return false
        end
      elsif roman_array.index(roman[i]) == (roman_array.index(roman[i+1]) -2)
        arabic_number -= roman_hash[roman[i]]
      else
        puts 'You have not entered a valid roman number.'
        return false
      end
    end
  i -= 1
  end
  arabic_number
end

while true
  roman_value = get_input(roman_hash)
  arabic_value = convert_to_arabic(roman_value, roman_hash)
  if arabic_value
    break
  end
end

puts "The arabic equivalent of your roman number is #{arabic_value}."