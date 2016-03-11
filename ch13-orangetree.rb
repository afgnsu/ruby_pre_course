#program to grow an orange tree

class OrangeTree
  def initialize
    @current_height = 0.5
    @max_height = rand(9.0..10.0).round(2)
    @maturity = rand(6) + 10 #fullsize after 10-15 years
    @growth_rate = @maturity**(1/(@max_height-@current_height))
    @tree_age = 0
    @max_age = 20 + rand(11)
    @fruit = 0
    @fruit_start = rand(3..4)
    puts "Your new baby orange tree has started to grow. "\
          "It is only #{@current_height} metres tall."
  end
  def height
    @current_height
  end
  def one_year_passes
    if @tree_age < @max_age
      @tree_age += 1
      if @tree_age < @maturity
        @current_height = (Math::log(@tree_age,@growth_rate)+0.5).round(2)
      else
        @current_height = @max_height
      end
      if @tree_age >= @fruit_start
        @fruit = @tree_age*2 + rand(0..10)
      end
      puts "Your tree is now #{@tree_age} years old."
    else
      puts "Your tree has unfortunately grown too old, "\
            "and has died at the ripe age of #{@tree_age}."
      exit
    end
  end
  def count_the_oranges
    @fruit
  end
  def pick_an_orange
    if @fruit > 0
      @fruit -= 1
      puts 'Wow what a beautiful orange, I\'m sure it\'ll be delicious!'
    else
      puts "I'm sorry, there are currently no more oranges "\
            "left on your tree this year."
    end
  end
end

puts "Press 'enter' when you are ready to start growing your orange tree."
while true
  x=gets.chomp
  if x == ''
    break
  end
end
puts
tree=OrangeTree.new
puts

while true
  puts 'What would you like to do now?'
  puts '1) check the height of your tree'
  puts '2) check the number of oranges on your tree'
  puts '3) pick an orange from your tree'
  puts '4) let the tree grow for a year.'

  answer = gets.chomp
  puts
  if answer == '1'
    puts "Your tree is currently #{tree.height} metres tall."
  elsif answer == '2'
    puts "Your tree has #{tree.count_the_oranges} oranges on it."
  elsif answer == '3'
    tree.pick_an_orange    
  elsif answer == '4'
    tree.one_year_passes
  else
    puts 'Please choose a valid option, either 1, 2, 3 or 4.'
  end
  puts
end