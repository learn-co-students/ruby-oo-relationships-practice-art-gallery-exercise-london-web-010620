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
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city}
  end

  def self.total_experience
    sum_years_experience = @@all.map do |artist|
      artist.years_experience
    end
    sum_years_experience.sum
  end
  
  def self.most_prolific
    self.all.max_by { |artists| artists.years_experience / artists.paintings.count }
  end

  def self.create_painting(title, price, gallery)
    Painting.new("title", "price", self, "gallery")
  end

end
