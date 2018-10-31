require_relative './song'

class Artist
	@@all = []

	def self.song_count
		@@all.length
	end

	attr_accessor :name
	attr_reader :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song
		@@all << song
	end

	def add_song_by_name(name)
		song = Song.new(name)
		self.add_song(song)
	end
end
