require_relative '../config/environment.rb'

g1 = Gallery.new("Tate", "London")
g2 = Gallery.new("Swindon Gallery", "Swindon")
g3 = Gallery.new("Marrakesh", "Marrakesh")

a1 = Artist.new("Simon", 25)
a2 = Artist.new("Rikesh", 10)
a3 = Artist.new("George", 2)

p1 = Painting.new("greenery", 8, g1, a1)
p2 = Painting.new("blueery", 100000, g2, a1)
p3 = Painting.new("yeloowery", 200, g3, a1)
p4 = Painting.new("Simon Nude", 35, g1, a2)
p5 = Painting.new("George self-portrait", 100, g3, a3)
p6 = Painting.new("George Nude", 150000, g1, a2)



binding.pry

puts "Bob Ross rules."
