# This program uses a 'question' method to ask a series of questions for a survey

def ask question
  puts question
  while true
  reply = gets.chomp.downcase

    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    end
  puts 'Please answer yes or no.'
  end
end

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts wets_bed

