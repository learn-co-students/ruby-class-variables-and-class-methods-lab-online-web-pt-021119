class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
		@@count += 1
		@@genres << genre
		@@artists << artist
		@name = name
		@artist = artist
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
		g_count = {}
		@@genres.each do |genre|
			g_count[genre] = 0 unless g_count[genre]
			g_count[genre] += 1
		end
		g_count
	end

	def self.artist_count
		a_count = {}
		@@artists.each { |artist|
			a_count[artist] = 0 unless a_count[artist]
			a_count[artist] += 1
		}
		a_count
	end
end
