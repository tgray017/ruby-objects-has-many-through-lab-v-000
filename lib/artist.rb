class Artist
  attr_reader :name, :genres

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
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    Songs.all.select {|song.genre| song.artist == self}
  end
  
  
end