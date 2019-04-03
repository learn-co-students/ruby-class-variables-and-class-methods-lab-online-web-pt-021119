require 'pry'

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  # if @@artists.include?(artist) == false
  @@artists.push(artist)
  @@genres.push(genre)
# end
end

def self.count
  @@count
end

def self.artists
uniquearray = []
  @@artists.each do |item|
    if uniquearray.include?(item) == false
      uniquearray.push(item)

    end

  end
return uniquearray
end

def self.genres
  uniquearray = []
    @@genres.each do |item|
      if uniquearray.include?(item) == false
        uniquearray.push(item)

      end

    end
  return uniquearray
end



# Song.genre_count
  # => {"rap" => 5, "rock" => 1, "country" => 3}
def self.genre_count
  genreshash = {}
  # counter = 0
@@genres.each do |item|

  if genreshash.has_key?(item)
    genreshash[item] += 1
  else
    genreshash[item] = 1
    # genreshash[item] += 1
  end
end
return genreshash
end



def self.artist_count
  artistshash = {}
  # counter = 0
@@artists.each do |item|

  if artistshash.has_key?(item)
    artistshash[item] += 1
  else
    artistshash[item] = 1
    # genreshash[item] += 1
  end
end
return artistshash

end




end
