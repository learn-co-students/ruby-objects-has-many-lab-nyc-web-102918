class Song

  attr_accessor :artist

  @@all = []

  def initialize(song_name)
    @song_name = song_name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @song_name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
