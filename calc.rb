puts 1.0+2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0/2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2

#variables
days_in_year = (365.0*20+1.0*4) / 20
hours_in_year = days_in_year*24

#Displays hours in a year
puts "There are #{hours_in_year} hours in a year"

#Calculating minutes in a decade
puts "There are #{hours_in_year*10*60} minutes in a decade"

#Calculates my age in seconds
years = 2014 - 1986 -1 #need to fix this calculation using date variables
months = 2 - 8 +12
days = 1 - 24 + 31

puts "Today I am #{(days+(months*365/12)+(years*365))*24*60*60} seconds old"

#Author's age
author = 1160*1000000
puts "The author is #{author /60 /60 /24 /365} years old"