class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @genres = []
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select {|song| song if song.artist == self}
    
  end
  
  
end