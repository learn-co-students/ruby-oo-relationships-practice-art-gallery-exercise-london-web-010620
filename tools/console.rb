require_relative '../config/environment.rb'
 a1 = Artist.new("Adam", 10)
 a2 = Artist.new("Bob", 20)
 a3 = Artist.new("Chris", 30)

 g1 = Gallery.new("National Portrait Gallery", "London")
 g2 = Gallery.new("Louvre", "Paris")
 g3 = Gallery.new("MOMA", "New York")

 p1 = Painting.new("My Work", 100, a1, g1)
 p2 = Painting.new("Another One", 1000, a2, g2)
 p3 = Painting.new("Last One", 10000, a3, g3)


binding.pry

puts "Bob Ross rules."
