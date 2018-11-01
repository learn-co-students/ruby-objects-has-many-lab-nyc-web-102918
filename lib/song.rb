class Song
  attr_accessor :name, :artist
  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end

  def self.all
    @@all

  end 
end

# #new
#    is initialized with an argument of a name
#    pushes new instances into a class variable called @@all upon initialization (FAILED - 1)
#
#    is a class variable set to an array
#  .all
#    is a class method that returns an array of all song instances that have been created (FAILED - 2)
#  #name
#    has a name
#  #artist
#    belongs to an artist
#  #artist_name
#    knows the name of its artist
#    returns nil if the song does not have an artist
