require 'pry'

class Artist

  # has an attr_accessor for name
  attr_accessor:name
  # attr_reader:songs

# is initialized with a name
  def initialize(name)
    @name=name
    # @songs=[]
  end

  # #add_song
  # takes in an argument of a song and associates
  #that song with the artist by
  # telling the song that it belongs to that artist
  def add_song(song_instance)
    song_instance.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  #   #add_song_by_name
  #   takes in an argument of a song name, creates a
  #   new song with it and associates the song and artist
  def add_song_by_name(song_name)
    Song.new(song_name).artist = self
  end

  #     .song_count
  #     is a class method that returns
  #     the total number
  #     of songs associated to all existing artists
  def self.song_count
    Song.all.length
  end


end
