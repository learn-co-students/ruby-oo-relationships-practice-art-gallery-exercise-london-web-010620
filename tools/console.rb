require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 92)
matisse = Artist.new("Matisse", 84)
monet = Artist.new("Monet", 86 )

tate  = Gallery.new("Tate Modern", "London")
louvre = Gallery.new("Louve", "Paris")
moma = Gallery.new("Moma", "New York")

Painting.new("Blue Nudes", 3000, matisse, moma)
Painting.new("The Sheaf", 3500, matisse, moma)
Painting.new("Impression, Sunrise", 3750, monet, louvre)
Painting.new("Water Lilies", 10000, monet, louvre)
Painting.new("Waterloo Bridge", 2000, monet, tate)
Painting.new("Guernica", 12000, picasso, louvre )
Painting.new("Le Reve", 9000, picasso, louvre)
Painting.new("Girl Before a Mirror", 7000, picasso, tate)
Painting.new("The Kiss", 9500, picasso, tate )

binding.pry

puts "Bob Ross rules."
