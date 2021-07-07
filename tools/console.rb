require_relative '../config/environment.rb'

a1 = Artist.new("jones",5)
a2 = Artist.new("michael",6)

g1 = Gallery.new("Bucuroo","London")
g2 = Gallery.new("Turmuli","Italy")


p1 = Painting.new("Muculu",1012000,a1,g1)
p2 = Painting.new("laptop",5000,a1,g2)
p3 = Painting.new("Cofee",10000,a2,g1)
p4 = Painting.new("apple",100000,a2,g2)

binding.pry

puts "Bob Ross rules."
