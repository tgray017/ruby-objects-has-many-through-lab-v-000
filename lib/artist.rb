class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, genre)
  end
  
end