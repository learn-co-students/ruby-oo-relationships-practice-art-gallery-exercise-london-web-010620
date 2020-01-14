class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self  
  end

  def self.all 
    @@all
  end

  def paintings
      Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery } #can use self.paintings to be more explicit
  end

  def cities
    paintings.map {|painting| painting.gallery.city}
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title,price,gallery)
    painting = Painting.new(title,price,gallery,self)
  end
end

#whether to use a class or instance method
#does it concern all instances or single instance 