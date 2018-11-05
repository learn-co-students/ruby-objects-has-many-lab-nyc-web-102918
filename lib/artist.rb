require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name = nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs #returns an array of songs that belong to the this artist
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song) #you added a new song instance, then associated that instance with it's artist
    # Song.new(song)
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.artist = self
  end


  def self.song_count
    song_count = Artist.all.map do |artist|
      artist.songs.count
    end
    song_count.inject(:+)
  end

end #class Artist
