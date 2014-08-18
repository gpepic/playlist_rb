require 'pry'

class Playlist
  attr_reader :album, :song

  @@all_playlists = []

  def initialize(attributes)
    @songs = []
    @album = attributes[:album]
    @song = attributes[:song]
    @description = attributes
  end

  def Playlist.all
    @@all_playlists
  end

  def Playlist.clear
    @@all_playlists = []
  end

  def description
    @description
  end

  def save
    @@all_playlists << self
  end


  # def album
  #   @album
  # end
end

