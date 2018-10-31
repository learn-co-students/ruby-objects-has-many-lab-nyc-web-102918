class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.song_count
    @songs.length
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song_instance)
    song_instance.artist = self
  end

  def add_song_by_name(song_name)
    Song.new(song_name).artist = self
  end

  def self.song_count
    Song.all.length
  end


end
