to_move = Dir['../tests/test_start/*.txt']

puts 'What should I rename the files to?'

prefix = gets.chomp

puts
print "Moving #{to_move.size} files: "

counter = 1

to_move.each do |file|
  print "."
  new_name = if counter <10
    "../tests/test_end/#{prefix}0#{counter}.txt"
  else 
    "../tests/test_end/#{prefix}#{counter}.txt"
  end

  if !File.exist?(new_name) # file doesn't exist
  File.rename file, new_name
  else # file already exists
    puts "The file name '#{new_name}' already exists."
    puts "Aborting moving files."
    exit
  end
  counter += 1
end

puts
puts 'All Done!'
