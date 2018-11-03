class Song

  attr_accessor :name, :artist
# belongs to an artist
# has a name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # is initialized with an argument of a name
    # push
  end

def self.all
  @@all
  # is a class method that returns an array of all song i
end

def artist_name
  artist.name if artist
#   knows the name of its artist
# returns nil if the song does not have an artist
end

end
