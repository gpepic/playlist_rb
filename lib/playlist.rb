require 'pry'

class Playlist

  attr_reader :name, :theme

  def initialize(attributes)
    @songs = []
    @name = attributes[:name].to_s
    @theme = attributes[:theme].to_s
  end

  def add_song(song)
    @songs.push(song)
  end

  def print_songs
    # puts @songs.length
    @songs.each do |song|
      puts song.inspect
    end
  end

  def print_artists
    self.sort(:artist).each do |song|
      puts song.artist
    end
  end

  def print_titles
    self.sort(:title).each do |song|
      puts song.title
    end
  end

  def print_album
    self.sort(:album).each do |song|
      puts song.album
    end
  end

  def sort(attribute)
    # @songs.sort_by {|song| song.send(attribute)}
    case(attribute)
    when :artist
      @songs.sort_by {|song| song.artist.downcase}
    when :title
      @songs.sort_by {|song| song.title.downcase}
    when :album
      @songs.sort_by {|song| song.album.downcase}
    end
  end
end

