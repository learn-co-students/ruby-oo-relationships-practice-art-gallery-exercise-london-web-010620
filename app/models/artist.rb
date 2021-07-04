class Artist

  attr_reader :name, :years_experience, :artist

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
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    Artist.all.map {|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.years_experience/artist.paintings.count}
  end

  def self.create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
  






end
