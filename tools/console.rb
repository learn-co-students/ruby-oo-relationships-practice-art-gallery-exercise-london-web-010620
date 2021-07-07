require_relative '../config/environment.rb'

artist1 = Artist.new("Leonardo", 20)
artist2 = Artist.new("Miguel", 23) 

g1 = Gallery.new("Place1", "London")
g2 = Gallery.new("Place2", "Madrid")

p1 = Painting.new("painting1",500,artist1,g1)
p2=Painting.new("painting2",1500, artist2,g1)
p3=Painting.new("painting3",5000,artist1,g2)

binding.pry

puts "Bob Ross rules."

