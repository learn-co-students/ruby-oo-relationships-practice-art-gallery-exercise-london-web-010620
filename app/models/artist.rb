class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  #Returns an `array` of all the artists - DONE
  def self.all
    @@all
  end

  #Returns an `array` all the paintings by an artist - DONE
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  #Returns an `array` of all the galleries that an artist has paintings in - DONE
  # My array is not unique! 
  def galleries
    paintings.map {|painting| painting.gallery}
  end
  
  #Return an `array` of all cities that an artist has paintings in - DONE
  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end


  #Returns an `integer` that is the total years of experience of all artists - DONE
  def self.total_experience
    array = self.all.map {|artist| artist.years_experience}
    array.sum
  end

  #Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.count / artist.years_experience}
  end

  #creates a new painting belonging to that artist - DONE
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
