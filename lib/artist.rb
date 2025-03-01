class Artist 

    attr_accessor :name 

    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    
    def new_song(name, genre)
        Song.new(name, self, genre)
    end 


    def songs
        Song.all {|x| x.artist == self}
    end 


    def genres
        songs.collect {|x| x.genre}
    end 




end 