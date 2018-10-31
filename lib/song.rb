class Song

  # #artist
  #   belongs to an artist
  attr_accessor:title,:artist

#   is initialized with an argument of a name
#   pushes new instances into a
#   class variable called @@all upon initialization
  def initialize(title)
    @title=title
    @@all << self
  end

  # @@all is a class variable set to an array
  @@all=[]

  # .all is a class method that returns
  #an array of all song instances that have been created
 def self.all
   @@all
 end

 # #name
 #   has a name
  def name
    @title
  end

  # #artist_name
  #   knows the name of its artist
  #   returns nil if the song does not have an artist

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
