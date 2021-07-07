class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end
  def galleries
    paintings.map{|painting|painting.gallery}
  end
  def cities
      paintings.map{|painting|painting.gallery.city}
  end
  def self.total_experience
    all.reduce(0){|total,curr|total + curr.years_experience}
  end

  def self.most_prolific
  @@all.min_by do |artist|
    artist.years_experience / artist.paintings.count
    end
  end
  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end
end
