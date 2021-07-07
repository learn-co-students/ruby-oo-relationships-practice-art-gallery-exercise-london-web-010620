require_relative '../config/environment.rb'

a1 = Artist.new("artist1", 23)
a2 = Artist.new("artist2", 10)
a3 = Artist.new("artist3", 15)

g1 = Gallery.new("gallery1", "london")
g2 = Gallery.new("gallery2", "paris")

p1 = Painting.new("title1", 2000, a1, g1)
p2 = Painting.new("title2", 1500, a3, g1)
p3 = Painting.new("title3", 3000, a3, g2)
p4 = Painting.new("title4", 1000, a3, g1)
p5 = Painting.new("title5", 2500, a1, g1)
p6 = Painting.new("title6", 6000, a2, g2)

binding.pry

puts "Bob Ross rules."
