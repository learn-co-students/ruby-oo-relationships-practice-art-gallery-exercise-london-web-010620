class Gallery

  attr_reader :name, :city, :painting

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all 
    @@all
  end

  #allways create the following code so I can use it in other methods. It connect the paintings.all con galleries.
  def paintings 
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists 
    self.paintings.map {|painting| painting.artist}
  end

  def artists_names(name)
    self.artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting(price)
    paintings.max_by do |painting|
      painting.price
    end
  end

end
