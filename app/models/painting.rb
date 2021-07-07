class Painting

  attr_accessor :gallery #accessor because it maybe change gallery any painting in the future500
  attr_reader :title, :price, :artist

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


  def self.total_price
    all_prices = self.all.map {|painting| painting.price}
    
    all_prices.sum
  end

end
