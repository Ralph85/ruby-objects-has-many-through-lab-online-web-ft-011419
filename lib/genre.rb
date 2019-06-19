class Genre

   attr_reader :name, :genre
  attr_accessor :song

  @@all = []

   def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

   def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

	def self.all
		@@all
	end

   def artists
    Song.all.map do |song|
      song.artist
    end
  end
end
