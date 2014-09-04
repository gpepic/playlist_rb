class Song
  attr_reader :artist, :title, :album

  def initialize(attributes)
    @artist = attributes[:artist].to_s
    @album = attributes[:album].to_s
    @title = attributes[:title].to_s
  end

  def inspect
    "#{@artist}, #{@album}, #{@title}"
  end

  alias_method :to_s, :inspect

end




