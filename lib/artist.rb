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
    @songs << new_song
    @genres.push(genre) unless @genres.include?(genre)
  end
  
  def songs
    self.
    
  end
  
  
end