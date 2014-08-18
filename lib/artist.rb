class Artist
  attr_reader :artist

  def initialize(att)
    @@artists = []
  end

  def add_artist(artist)
    att[:artist].each do |artist|
    @@artists << Artist.new(artist)
    end
  end
end
