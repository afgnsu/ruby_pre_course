# Program to generate 'well formatted' table of contents using an array

contents = ['Getting Started', 1,
            'Numbers', 9,
            'Letters', 13]

chap_length = 40
page_length = 3
toc_length = 11 + chap_length + 6 + page_length

puts
puts 'Table of Contents'.center(toc_length)
puts

i = 1

while contents[i] != nil
  puts ('Chapter ' + ((i+1)/2).to_s + ': ' +
    contents[i-1].ljust(chap_length) +
    'page ' + contents[i].to_s.rjust(page_length))

  i = i + 2

end

puts