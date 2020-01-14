require 'pry'
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
    self.paintings.map { |artist| artist.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    @@all.map { |artist| artist.years_experience }.sum
  end

  def self.most_prolific
    @@all.min_by do |artist|
    artist.years_experience / artist.paintings.count
      # binding.pry
    end
  end

  def self.creating_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
