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

  #allways create the following code so I can use it in other methods. It connect the paintings.all con artists.
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
    #it is using the method paintings
  end 

  def cities 
    #to find out we need to look at the galleries
    self.galleries.map do |gallery|
      gallery.city
    end
  end 

  def self.total_experience
    #we can use here @@all., Artist. or self.
    all_years_experience = @@all.map { |artist| artist.years_experience }
    all_years_experience.sum
  end 

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end 

  def create_painting(title, price, gallery)
    ##especialize initialize method
    Painting.new(title, price, self, gallery)
    #4 arguments because the painting class has 4 and call 
  end

end





#Lecture

#How to know if its a class or instance method?
#does it concern to all instances or just one instances

#check in terminal: ruby/console.rb

#the model that belongs to another model has to have the instances(attribute accessor e.g.) -->in the "belongs to", not in the "has many".
#artist and gallery has relation "many to many". The painting is the one that conect both of them breaking them in 2, so its the "belongs to".
#Painting class is the single "source of truth", and its used to dont duplicate data, so we know where to update the data and dont have conflicts of data.
#In the Painting we will put the attribute and the initialize variables of the artist and gallery. If there is a default value it will go on the argument of the initialize.


#try in console:

#a1.painting