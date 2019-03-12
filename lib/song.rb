require 'pry'

class Song
  @@count = 0 
  @@artists = []
  @@genres = []
  attr_accessor(:name, :artist, :genre)
  
  def initialize(name, artist, genre) 
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@artists << artist 
    @@genres << genre 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.artists 
    @@artists.uniq! 
  end 
  
  def self.genres 
    @@genres.uniq!
  end 
  
  def self.genre_count 
    each_count = {} #stores genre and count
    @@genres.each do |key| 
      each_count[key] ||= @@genres.find_all{|e| e == key}.count 
    end 
    each_count 
  end 
  
  def self.artist_count 
    artist_songs = {} 
    @@artists.each do |key|
      artist_songs[key] ||= @@artists.find_all{|e| e == key}.count 
    end 
    artist_songs 
  end 
end 