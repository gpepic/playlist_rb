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
end
