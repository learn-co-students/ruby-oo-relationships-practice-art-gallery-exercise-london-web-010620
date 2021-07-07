require_relative '../config/environment.rb'

gallery_AA = Gallery.new("gallery_LDN", "City_AA")
gallery_BB = Gallery.new("gallery_NY", "City_BB")
gallery_CC = Gallery.new("gallery_HK", "City_CC")
gallery_DD = Gallery.new("gallery_HK", "City_CC")

artist_AA = Artist.new("Adam", 5)
artist_BB = Artist.new("Eve", 7)
artist_CC = Artist.new("Foo", 9)

painting_AA = Painting.new("title_AA", 111, gallery_AA, artist_AA)
painting_BB = Painting.new("title_BB", 222, gallery_BB, artist_BB)
painting_CC = Painting.new("title_CC", 333, gallery_CC, artist_CC)
painting_DD = Painting.new("title_DD", 444, gallery_DD, artist_BB)
painting_EE = Painting.new("title_EE", 555, gallery_DD, artist_AA)






binding.pry

puts "Bob Ross rules."
