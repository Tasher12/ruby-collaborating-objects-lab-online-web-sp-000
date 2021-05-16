class Song 
  attr_accessor :artist, :song  
  
  @@song = []
  
  def initialize(song)
    @song = song
    @@song << self 
  end 
  
  def self.all
    @@song 
  end  
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
  
   
end
