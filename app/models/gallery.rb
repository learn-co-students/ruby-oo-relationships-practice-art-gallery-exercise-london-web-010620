class Gallery

  attr_reader :name, :city, :painting, :artist

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}
  end

  def artists_name 
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.max_by {|painting| painting.price}
  end
end
