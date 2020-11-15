require 'pry'

class Song 
  
  attr_reader :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def artists 
    @@artists.uniq
  end
  
  def genre_count
    self.genres.tally
  end
  
  def artist_count
    self.artists.tally
  end
  
end