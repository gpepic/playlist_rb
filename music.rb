require './lib/playlist'
require './lib/artist'

@list = []
# use an array as a property of one class that contained objects of
# the other class
def main_menu

  puts "Press 'a' to add new music, 'l' to list your music or 's' to list your music by artist, album or song title."
  puts "Press 'x' to exit."
  main_choice = gets.chomp

  if main_choice == 'a'
    add_music
  elsif main_choice == 'l'
    list_music
  elsif main_choice == 's'
    submenu
  elsif main_choice == 'x'
    puts "Good bye!"
  else
    puts "Sorry, that option is invalid. Good bye."
    main_choice
  end
end

def add_music
  puts "Enter Artist"
  artist = gets.chomp
  puts "Enter Album Name"
  album = gets.chomp
  puts "Enter Song Title"
  title = gets.chomp

  @list << Playlist.new({@@artists, :album => album, :song => title})

  puts "Music added."
  puts "\n\n"
  main_menu
end

def list_music
  puts "Here is a list of your music:"
  @list.each do |music|
    puts music.description
  end
  puts "\n\n"
  main_menu
end

def submenu
  puts "Press 'a' to list by Artist, 'l' to list by Album, or 's' to list by Song Title."
  sub_choice = gets.chomp

  if sub_choice == 'a'
    list_artist
  elsif sub_choice == 'l'
    list_album
  elsif sub_choice == 's'
    list_title
  else
    puts "Sorry, that option is invalid. Good bye."
    sub_choice
  end
end

def list_artist
  puts "Here is a list of your music artists:"
  @list.each do |music|
    puts music.artist
  end
  puts "\n\n"
  main_menu
end

def list_album
  puts "Here is a list of your music albums:"
  @list.each do |music|
    puts music.album
  end
  puts "\n\n"
  main_menu
end

def list_title
  puts "Here is a list of your music song titles:"
  @list.each do |music|
    puts music.title
  end
  puts "\n\n"
  main_menu
end

main_menu



