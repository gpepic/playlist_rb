class Artist
  attr_reader :artist

  @@artists = []

  def initialize(att)
    @music_artist = att[:artist]
  end

  def Artist
    @@artists
  end

  def add_artist
    @music_artist.each do |artist|
    @@artists << Artist.new(artist)
    end

  def
  end
end
