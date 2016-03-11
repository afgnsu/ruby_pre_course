# Program to read in a file containing names and birthdates then,
# ask the user to input a name then,
# returns that person's next bday and their age on that date

bday_file = '../tests/bdaylist.txt'

if !File.exist?(bday_file)
  puts 'Error: no input file available.'
  exit
end

input = File.read bday_file

birthday={}
input.each_line do |line|
  temp = line.chomp.partition(", ")
  birthday[temp[0]]=temp[2]
end

while true
  puts "Please enter the fullname of the person who's birthday you seek."
  name = gets.chomp
  name_Cap = name.split(' ').map {|x| x.capitalize}.join(' ')

  if !birthday.has_key?(name_Cap)
    puts "The name you entered is not found in the birthday file."
    puts "Make sure you enter the name as; 'firstname surname'."
  else
    break
  end
end

dob_string=birthday[name_Cap]
month_day_year = dob_string.split(/, | /)

dob = Time.local(month_day_year[2], month_day_year[0], month_day_year[1])

if Time.new < (next_bday = Time.local(Time.new.year, month_day_year[0], month_day_year[1]))
else
  next_bday = Time.local(Time.new.year + 1, month_day_year[0], month_day_year[1])
end

age_next_bday = next_bday.year - month_day_year[2].to_i

bday_formatted = next_bday.strftime("%-d %B %Y")

puts "#{name_Cap}'s next birthday will be on #{bday_formatted}"\
      " when they will be #{age_next_bday} years old."