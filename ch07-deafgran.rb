# Deaf Grandma program

question = 'What would you like to say to Grandma?'
reply_quiet = 'HUH?! SPEAK UP, SONNY!'
count = 0

while true
puts question
answer = gets.chomp
  if answer == 'BYE'
    count = count + 1
    if count ==3
    break
    end
  else count = 0
  end
  if answer.upcase == answer
    year_string = (rand(21)+1930).to_s
    reply_loud = 'NO, NOT SINCE ' + year_string + '!'
    puts reply_loud
  else
    puts reply_quiet
  end
end
