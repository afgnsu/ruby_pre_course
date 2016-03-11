# leap years program

puts 'I will calculate all the leap years for you between two years!'
puts ''
puts 'Please enter your start year:'

start_yr = (gets.chomp).to_i

puts ''
puts 'Please enter your end year:'
puts ''

end_yr = (gets.chomp).to_i

years_till_leap = 4 - (((start_yr - 1)%4) + 1)
first_leap = start_yr + years_till_leap

leap = first_leap

while leap <= end_yr
  if (leap%100 != 0) || (leap%400 == 0) # this is a leap year
    puts leap.to_s
  end
  leap = leap + 4
end