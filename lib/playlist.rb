require 'pry'

class Playlist
  attr_reader :artist, :album, :song

  def initialize(attributes)
    @artist = attributes[:artist]
    @album = attributes[:album]
    @song = attributes[:song]
  end

  # def album
  #   @album
  # end
end

