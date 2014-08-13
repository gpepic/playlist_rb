require 'pry'

class Playlist
  attr_reader :artist, :album, :song

  @@all_playlists = []

  def initialize(attributes)
    @artist = attributes[:artist]
    @album = attributes[:album]
    @song = attributes[:song]
  end

  def Playlist.all
    @@all_playlists
  end

  def save
    @@all_playlists << self
  end


  # def album
  #   @album
  # end
end

# Playlist.new(
#   :album => 'Magnetic')
