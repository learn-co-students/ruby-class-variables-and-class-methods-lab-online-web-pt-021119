class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(song_name, artist_name, genre)
    @@count += 1 
    @@artists << artist_name
    @@genres << genre 
    @name = song_name
    @artist = artist_name
    @genre = genre 
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
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre) == false || @@genre_count == nil
        @@genre_count[genre] = 1 
      elsif @@genre_count.has_key?(genre)
        @@genre_count[genre] += 1 
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if  @@artist_count.has_key?(artist) == false || @@artist_count == nil
        @@artist_count[artist] = 1 
      elsif @@artist_count.has_key?(artist) 
        @@artist_count[artist] += 1 
      end
    end
    @@artist_count 
  end
  
end



