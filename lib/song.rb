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
  
  def self.artists 
    @@artists.uniq
  end
  
  def self.genre_count
    binding.pry
    self.genres.each_with_object(Hash.new(0)) {|k, h| h[k] += 1}
  end
  
  def self.artist_count
    self.artists.each_with_object(Hash.new(0)) {|k, h| h[k] =+ 1}
  end
  
end