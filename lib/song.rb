class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    hashy = Hash.new
    @@genres.each do |genre|
      hashy.key?(genre) ? hashy[genre] += 1 : hashy[genre] = 1
    end
    hashy
  end

  def self.artist_count
    hashy = Hash.new
    @@artists.each {|artist| hashy.key?(artist) ? hashy[artist] += 1 : hashy[artist] = 1}
    hashy
  end
end
