

class Artist 
  
  attr_accessor :name, :songs, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = self.new(name)
    song.name = name 
    song
  end
  
  def add_song(song)
    song.artist = self unless song.artist == self
    @songs << song unless @songs.include?(song)
  end
    
  def genres 
    genres = songs.collect {|song| song.genre}
    genres.uniq 
  end
  
  
  
  
end