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

  #Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select{|painting| painting.artist == self} 
  end 

  
  #Returns an `array` of all the galleries that an artist has paintings in
  def gallery 
    paintings.map{|artist| artist.gallery}
  end 

  #Return an `array` of all cities that an artist has paintings in
  def city 
    paintings.map{|artist| artist.gallery.city}
  end 

  #Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    self.all.map{|painting| painting.years_experience}.sum
  end 

  def self.most_prolific 
    self.all.max_by{|artist| artist.paintings.count / artist.years_experience}
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end