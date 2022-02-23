require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    @@genres = []
    def self.genres
        @@genres.uniq
    end

    @@artists = []
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

Song.new('99 probs', 'jay-z', 'rap')
Song.new('20 probs', 'jay', 'rap')
Song.new('baby', 'jb', 'pop')

binding.pry