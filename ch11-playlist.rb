# create an array of file names by searching in child directories for the extension
songs = Dir['C://**/*.mp3']

# shuffle the array
list = songs.shuffle

# write this array to a new file with the playlist extension
filename = '../playlist.m3u'

File.open filename, 'w' do |f|
  list.each do |e|
    f.write e
    f.puts ""
  end
end
