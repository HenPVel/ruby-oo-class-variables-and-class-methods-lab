
require 'Pry'

class Song

    attr_accessor :name,:artist,:genre
    @@count=0
    @@genres=[]
    @@artists=[]

    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1

        #if @@genres.include?(genre)==false
            # binding.pry
            @@genres << genre
        # end

        # if @@artists.include?(artist)==false
            # binding.pry
            @@artists << artist
        # end

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
        genre_hash = {}
        @@genres.each do |genre_key|
            genre_hash[genre_key] = @@genres.count(genre_key)
        end
        genre_hash
    end


    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist_key|
            artist_hash[artist_key] = @@artists.count(artist_key)
        end
        artist_hash
    end

end






# Song #new takes in three arguments: a name, artist and genre
# Song #name has a name
# Song #artist has an artist
# Song #genre has a genre
# Song class variables has a class variable, @@count
# Song class variables has a class variable, @@artists, that contains all of the artists of existing songs
# Song class variables has a class variable, @@genres, that contains all of the genres of existing songs
# Song .count is a class method that returns that number of songs created
# Song .artists is a class method that returns a unique array of artists of existing songs
# Song .genres is a class method that returns a unique array of genres of existing songs
# Song .genre_count is a class method that returns a hash of genres and the number of songs that have those genres
# Song .artist_count is a class method that returns a hash of artists and the number of songs that have those artists