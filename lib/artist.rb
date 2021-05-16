require 'pry'

class Artist
  attr_accessor :name, :song 
  
  
  @@all = []
 
  def initialize(name)
    @name = name
    @song = []
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def add_song(song)
    @song << self 
    song.artist = self 
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
    self.all.detect { |artist| artist.name == name }
  end
  
  def self.print_songs
    self.each {|s| s}
  end 
  
end
