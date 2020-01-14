class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  #Returns an `array` of all paintings in a gallery - DONE
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  #Returns an `array` of all artists that have a painting in a gallery - DONE
  def artists
    paintings.map {|painting| painting.artist}
  end
  
  #Returns an `array` of the names of all artists that have a painting in a gallery - DONE
  def artist_names
    artists.map {|artist| artist.name}.uniq
  end


  #Returns an `instance` of the most expensive painting in a gallery - DONE
  def most_expensive_painting
    paintings.reduce do |total, curr|
      total.price > curr.price ? total : curr
    end
  end

end
