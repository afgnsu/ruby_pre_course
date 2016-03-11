# Program to calculate someone's age, and then output a 'SPANK!' per year

month_names = {'jan' => 1, 'january' => 1, 'feb' => 2, 'february' => 2,
              'mar' => 3, 'march' => 3, 'apr' => 4, 'april' => 4,
              'may' => 5, 'jun' => 6, 'june' => 6,
              'jul' => 7, 'july' => 7, 'aug' => 8, 'august' => 8,
              'sep' => 9, 'september' => 9, 'oct' => 10, 'october' => 10,
              'nov' => 11, 'november' => 11, 'dec' => 12, 'december' => 12}

puts 'Please enter the year you were born: YYYY'

while true
  year_input = gets.chomp

  if (year_input.to_i == 0) ||(year_input.length != 4)
    puts 'Your birth year must be in the format YYYY. Please re-enter it.'
  elsif year_input.to_i > Time.new.year
    puts 'You can not be born in the future. Please specify a year in the past.'
  else
    year = year_input.to_i
    break
  end
end

puts 'Please enter the month you were born:'

while true
  month_input = gets.chomp

  if month_names.has_key?(month_input.downcase) # month entered as a word
    month = month_names[month_input.downcase]
    break
  elsif (month_input.to_i == 0) || (month_input.length > 2)
    puts 'Please re-enter your month of birth as either the month name or in MM format.'
  elsif month_input.to_i > 12
    puts 'Please enter a month between 1 and 12.'
  elsif Time.local(year, month_input.to_i) > Time.new
  puts 'You can not be born in the future. Please specify month in the past.'  
  else
    month = month_input.to_i
    break
  end
end

puts 'Please enter the day number you were born eg 16:'

while true
  day_input = gets.chomp

  if (day_input.to_i == 0) || (day_input.length > 2)
    puts 'Please re-enter the day you were born as DD eg 21.'
  elsif day_input.to_i > 31
    puts 'Please enter a valid day for your month of birth.'
  elsif Time.local(year, month, day_input.to_i) > Time.new
  puts 'You can not be born in the future. Please specify a day in the past.'
  else
    day = day_input.to_i
    break
  end
end

now = Time.new

age_seconds = now - Time.local(year,month,day)

age_years = age_seconds/60/60/24/365

puts
age_years.to_i.times {
  puts 'SPANK!'
}