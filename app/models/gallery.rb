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

  def painting
    Painting.all.select {|painting| painting.gallery == self }
  end 

  def artist 
    self.painting.map{|painting| painting.artist }
    #self is optional 
  end 

  def artists.names
    self.artist.map {|artist| artist.name }
  #self is optional 
  end 

  def most_expensive_painting
    painting.max_by{|painting| painting.price }

  end 

  #see gabs code from the lecture. 


end
