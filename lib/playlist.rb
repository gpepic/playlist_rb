require 'pry'

class Playlist

  def initialize(attributes)
    @artist = attributes[:artist]
    @album = attributes[:album]
    @song = attributes[:song]
  end

end
