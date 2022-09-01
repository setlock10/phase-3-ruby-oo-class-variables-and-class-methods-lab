require 'pry'

class Song 
    attr_accessor :name, :artist, :genre
  
        @@all=[]
        @@genres=[]
        @@artists=[]
        @@count=0
        @@genre_count={}
        @@artist_count={}


    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@all<<self
        @@count+=1
        @@genres<<@genre
        @@artists<<@artist
        @@genre_count=@@genres.tally
        @@artist_count=@@artists.tally
    end

    #.Class methods
    def self.all
        @@all
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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

end

s1=Song.new("lrc","Prince","pop")
s2=Song.new("fft","Prince","pop")
s3=Song.new("pr","Prince","rock")

binding.pry