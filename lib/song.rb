class Song

  attr_accessor :name, :artist, :genre

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
    scrub_genres = []
    @@genres.each do |name|
      scrub_genres << name unless scrub_genres.include?(name)
    end
    scrub_genres
  end

  def self.artists
    scrub_artists = []
    @@artists.each do |name|
      scrub_artists << name unless scrub_artists.include?(name)
    end
    scrub_artists
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.inject(artist_hash) do |hash, e|
      hash[e] += 1
      artist_hash
    end
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end

end
