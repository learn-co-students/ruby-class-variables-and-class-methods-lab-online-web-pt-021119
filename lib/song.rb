class Song
	@@count = 0
	@@genres = []
        @@artists = []
attr_accessor :name,:artist,:genre

def initialize(name,artist,genre)
   @name = name
   @artist = artist
   @genre = genre
   @@count += 1
##   @@genres.push(genre) unless @@genres.include?(genre)
##   @@artists.push(artist)unless @@artists.include?(artist) 
   @@genres.push(genre)
   @@artists.push(artist)
end

def self.count
  @@count
end

def self.artists
   @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.artist_count
count = 0
@@artist_count = {}
@@artists.each {|x| @@artist_count[x]=0 unless @@artist_count[x] 
                      @@artist_count[x] += 1
				}
	@@artist_count
end 

def self.genre_count
@@genre_count = {}
@@genres.each {|x| @@genre_count[x]=0 unless @@genre_count[x]
		@@genre_count[x] += 1 }
		@@genre_count
end

end
