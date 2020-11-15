class Song 
  
  attr_reader :name, :artist, :genre 
  @@count = 0 
  @@genres, @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres, @@artists << genre, artist
  end
  
  def count
    @@count
  end
  
  def genres
    @@genres.uniq 
  end
  
  def artists 
    @@artists.uniq
  end
  
  def genre_count
    
  
end