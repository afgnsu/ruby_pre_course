# program to determine the size of a continent from a 'map' in an array

o = 'water'
M = 'land'

world1 =  [[o,o,o,o,o,o,o,o,o,o,o],
          [o,o,o,o,M,M,o,o,o,o,o],
          [o,o,o,o,o,o,o,o,M,M,o],
          [o,o,o,M,o,o,o,o,o,M,o],
          [o,o,o,M,o,M,M,o,o,o,o],
          [o,o,o,o,M,M,M,M,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,o],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,o,o,o,o,M,M,o,o,o],
          [o,M,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,o,o,o,o,o,o,o]]

world2 =  [[o,o,M,o,o,o,o,o,o,o,o],
          [o,o,M,o,M,M,o,o,o,o,o],
          [o,o,M,o,o,o,o,o,M,M,o],
          [o,o,o,M,o,o,o,o,o,M,o],
          [o,M,M,M,o,M,M,o,o,o,o],
          [M,o,o,o,M,o,M,M,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,M],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,o,o,o,o,M,M,o,o,o],
          [o,M,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,o,M,o,o,o,o,o]]

world3 =  [[o,o,M,o,o,o,o,o,o,o,o,o],
          [o,o,M,o,M,M,o,o,o,o,o,o],
          [o,o,M,o,o,o,o,o,M,M,o,o],
          [o,o,o,M,o,o,o,o,o,M,o,o],
          [o,M,M,M,o,M,M,o,o,o,o,o],
          [M,o,o,o,M,o,M,M,o,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,M,o],
          [o,o,o,M,M,o,M,M,M,o,o,M],
          [o,o,o,o,o,o,M,M,o,o,o,o],
          [o,M,o,o,o,M,o,o,o,o,o,o],
          [o,o,o,o,o,M,o,o,o,o,o,o]]

world4 =  [[o,o,M,o,o,o,o,o,o,o,o],
          [o,o,M,o,M,M,o,o,o,o,o],
          [o,o,M,o,o,o,o,o,M,M,o],
          [o,o,o,M,o,o,o,o,o,M,o],
          [o,M,M,M,o,M,M,o,o,o,o],
          [M,o,o,o,M,o,M,M,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,M],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,o,o,o,o,M,M,o,o,o],
          [o,M,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size world, x, y # x and y are the starting co-ordinates
  if (x < 0)||(x>=world[0].size)||(y<0)||(y>=world.size)
    # falling off the edge of the map
    return 0
  end

  if world [y][x] != 'land'
    # water or already checked
    return 0
  end

  size = 1 # count current tile
  world [y][x] = 'counted land' #change to counted

  #count all neighbouring tiles recursively
  size = size + continent_size(world,x-1,y-1)
  size = size + continent_size(world,x,y-1)
  size = size + continent_size(world,x+1,y-1)
  size = size + continent_size(world,x-1,y)
  size = size + continent_size(world,x+1,y)
  size = size + continent_size(world,x-1,y+1)
  size = size + continent_size(world,x,y+1)
  size = size + continent_size(world,x+1,y+1)
  size
end

puts continent_size(world1,5,5)
puts continent_size(world1,9,2)
puts continent_size(world1,4,1)
puts continent_size(world1,1,9)
puts continent_size(world1,8,9)
puts continent_size(world1,10,10)
puts continent_size(world1,0,0)
puts
puts continent_size(world2,6,5)
puts world2.size.to_s
puts world2[0].size.to_s
puts
puts continent_size(world3,6,5)
puts world3.size.to_s
puts world3[0].size.to_s
puts
puts continent_size(world4,6,5)
puts world4.size.to_s
puts world4[0].size.to_s