class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def name
    @title
  end


  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
