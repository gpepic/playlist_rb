require 'rspec'
require 'music'

describe :playlist do

    it 'is initialized with a hash of attributes' do
      test_playlist = Playlist.new({:artist => 'Goo Goo Dolls', :album => 'Magnetic', :song =>'When the World Breaks Your Heart'})
      expect(test_playlist).to be_an_instance_of(Playlist)
    end

    it 'shows the album name' do
      test_playlist = Playlist.new({:album => 'Magnetic'})
      expect(test_playlist.album).to eq('Magnetic')
    end

    it 'shows the name of the artist' do
      test_playlist = Playlist.new({:artist => 'Goo Goo Dolls'})
      expect(test_playlist.artist).to eq('Goo Goo Dolls')
    end

    it 'shows the song title' do
      test_playlist = Playlist.new({:song => 'When the World Breaks Your Heart'})
      expect(test_playlist.song).to eq('When the World Breaks Your Heart')
    end

    describe '.all' do
      it 'is empty hash at first' do
        expect(Playlist.all).to eq([])
      end

      it 'gets added to when save is called on instance' do
        test_playlist = Playlist.new({:artist => 'Goo Goo Dolls', :album => 'Magnetic', :song =>'When the World Breaks Your Heart'})
        test_playlist.save
        expect(Playlist.all).to eq([test_playlist])
      end
    end

    describe '.clear' do
      it 'empties out all the saved music' do
        Playlist.new({:artist => 'Goo Goo Dolls', :album => 'Magnetic', :song =>'When the World Breaks Your Heart'}).save
        Playlist.clear
        expect(Playlist.all).to eq([])
      end
    end
end
