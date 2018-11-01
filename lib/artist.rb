class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []     #Declaro un array porque tiene muchas canciones
  end

  def add_song(song)
    # takes in an argument of a song and associates that song with the artist
    # by telling the song that it belongs to that artist

    @songs << song
    # El metodo se llama agregar una cancion por lo tanto debo agregar esa cancion al array

    song.artist = self
    # estoy diciendo que la cancionn song pertece a artist por lo tanto song.artist y luego esto es igual
    # a self que hace referencia al objeto en este instante

    @@song_count += 1

  end

  def add_song_by_name(name)
    #takes in an argument of a song name, creates a new song with it and associates the song and artist

    song = Song.new(name) #creacion de una nueva
    #utilizo Song porque es la clase y le paso a new el nuevo nombre de la cancion
    #agrego la nuevo cancion al vector
    @songs << song
    # estoy diciendo que la cancionn song pertece a artist por lo tanto song.artist y luego esto es igual
    # a self que hace referencia al objeto en este instante

    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    #Is a class method that returns the total number of songs associated to all existing artists
    @@song_count

  end

end

#Explicacion de self

# class S
#   puts 'Comenzó la clase S'
#   puts self
#   module M
#     puts 'Módulo anidado S::M'
#     puts self
#   end
#   puts 'De regreso en el nivel más superficial de S'
#   puts self
# end
#
# Comenzó la clase S
# S
# Módulo anidado S::M
# S::M
# De regreso en el nivel más superficial de S
# S
