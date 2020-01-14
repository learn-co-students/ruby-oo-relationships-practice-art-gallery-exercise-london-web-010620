class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  #Returns an `integer` that is the total price of all paintings
  def self.total_price
    array = self.all.map {|painting| painting.price}
    array.sum
  end

end
