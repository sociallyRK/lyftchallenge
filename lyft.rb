# Programming Challenge (Optional)

# Calculate the detour distance between two different rides. Given four latitude / longitude pairs, 
# where driver one is traveling from point A to point B and driver two is traveling from point C 
# to point D, write a function (in your language of choice) to calculate the shorter of the detour 
# distances the drivers would need to take to pick-up and drop-off the other driver.

# assumption: 
# 1) detour is defined as the total additional distance the driver needs to go beyond normal route
# 2) all distances are straight line shots
# methodology: calculate both routes and see which one is less
# optimization: 


coordinates =[[1,1],[2,5],[4,3],[4,4]]

def distance(coord1,coord2)
  return Math.sqrt((coord1[1]-coord2[1])**2 + (coord1[0]-coord2[0])**2)
end
def detour(coordinates)
  a = coordinates[0]
  b = coordinates[1]
  c = coordinates[2]
  d = coordinates[3]
  original_route1 = distance(a,b)
  original_route2 = distance(c,d)
  detoured_route = distance(a,c) + distance(b,d)
  detour1 = detoured_route + original_route2 - original_route1
  detour2 = detoured_route + original_route1 - original_route2
  return [detour1,detour2].min
end
puts detour(coordinates)

# minified to 1 line (still requires distance formula)
# def detour(coordinates)
#   return [distance(coordinates[0],coordinates[2]) + distance(coordinates[1],coordinates[3]) + distance(coordinates[2],coordinates[3]) - distance(coordinates[0],coordinates[1]),distance(coordinates[0],coordinates[2]) + distance(coordinates[1],coordinates[3]) + distance(coordinates[0],coordinates[1]) - distance(coordinates[2],coordinates[3])].min
# end

