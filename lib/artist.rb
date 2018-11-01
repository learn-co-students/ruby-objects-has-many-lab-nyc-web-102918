require_relative './song'

class Artist

attr_accessor :name
attr_reader :songs
@@total_songs = []
  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song (song)

    song.artist = self
    @songs << song
    @@total_songs << song
  end

  def add_song_by_name (song_name)

    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
    @@total_songs << new_song

  end

  def self.song_count
    @@total_songs.length

  end


end
