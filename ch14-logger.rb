# program to log that it has started a block of code, ended the block,
# and what the return value was

def log(desc,&block)
  $global.times{print "\t"}
  puts "Beginning \"#{desc}\" ..."
  $global += 1
  x = block.call
  $global -= 1
  $global.times{print "\t"}
  puts "...\"#{desc}\" finished, returning: #{x}"
end

$global = 0
log 'outer block' do
  log 'inner block #1' do
    log 'smallest block' do
      true
    end
    5
  end
  log 'inner block #2' do
    'mmm foood.... yum yum yumyumyum'
  end
false
end