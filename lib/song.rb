class Song

    attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre=genre
        @@count+=1
        @@genres<<genre
        @@artists<<artist
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
        per_genre={}
        @@genres.uniq.each {|genre|per_genre[genre]=@@genres.count(genre)}
        per_genre
    end

    def self.artist_count
        per_artist={}
        @@artists.uniq.each {|artist|per_artist[artist]=@@artists.count(artist)}
        per_artist
    end
    
end