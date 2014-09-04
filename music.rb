require './lib/playlist'
require './lib/song'

def main_menu
  while true
    puts "\n\n"
    puts "Press 'a' to add new music."
    puts "Press 'l' to list your music."
    puts "Press 's' to sort your music by artist, album, or title."
    puts "Press 'x' to exit."
    main_choice = gets.chomp

    if main_choice == 'a'
      add_music
    elsif main_choice == 'l'
      print_attr_menu
    elsif main_choice == 's'
      sort_menu
    elsif main_choice == 'x'
      puts "Good bye!"
      break
    else
      puts "Sorry, that option is invalid. Good bye."
    end
  end
end

def add_music
  puts "Enter Artist"
  artist = gets.chomp
  puts "Enter Album Name"
  album = gets.chomp
  puts "Enter Song Title"
  title = gets.chomp

  song = Song.new({:artist => artist, :album => album, :title => title})
  $playlist.add_song song

  puts "Music added."
  puts "\n\n"
  main_menu
end

def create_new_playlist
  puts "Welcome!"
  puts "\n\n"
  puts "Enter Playlist Name"
  name = gets.chomp
  puts "\n\n"
  puts "Enter Playlist Theme"
  theme = gets.chomp
  puts "\n\n"

  Playlist.new({:name => name, :theme => theme})
end

def print_attr_menu
  puts "Press 'a' to list by Artist, 'l' to list by Album, 't' to list by Title or any other key to print list of songs."
  sub_choice = gets.chomp

  if sub_choice == 'a'
    $playlist.print_artists
  elsif sub_choice == 'l'
    $playlist.print_album
  elsif sub_choice == 't'
    $playlist.print_titles
  else
    $playlist.print_songs
  end
end

def sort_menu
  puts "Press 'a' to sort by Artist, 'l' to sort by Album, or 't' to sort by Title."
  sub_choice = gets.chomp

  if sub_choice == 'a'
    puts $playlist.sort :artist
  elsif sub_choice == 'l'
    puts $playlist.sort :album
  elsif sub_choice == 't'
    puts $playlist.sort :title
  else
    puts "Sorry, that option is invalid."
    sub_choice
  end
end

# $playlist = Playlist.new({:title => "My Favorite Songs", :theme => "Love Life"})
# $playlist.add_song Song.new({:artist => "goo goo dolls", :album => "magnetic", :title => "When the World Breaks Your Heart" })
# $playlist.add_song Song.new({:artist => "goo goo dolls", :album => "let love in", :title => "Give a Little Bit" })
# $playlist.add_song Song.new({:artist => "Artist Test", :album => "Test Album", :title => "Test Title" })
$playlist = create_new_playlist

main_menu



