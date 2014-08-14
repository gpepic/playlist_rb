require './lib/playlist'

@list = []

def main_menu

  puts "Press 'a' to add new song to playlist, 'l' to list your music or 's' to sort your playlist."
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

  @list << Playlist.new({:artist => artist, :album => album, :song => title})

  puts "Music added to Playlist."
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
  puts "Press 'a' to sort by Artist, 'l' to sort by Album, or 's' to sort by song title."
  sub_choice = gets.chomp

  if sub_choice == 'a'
    sort_artist
  elsif sub_choice == 'l'
    sort_album
  elsif sub_choice == 's'
    sort_title
  else
    puts "Sorry, that option is invalid. Good bye."
    sub_choice
  end
end

def sort_artist
  puts "Here is your list, sorted by artists:"
  @list.each do |music|
    puts music.artist
  end
  puts "\n\n"
  main_menu
end

def sort_album
  puts "Here is your list, sorted by album:"
  @list.each do |music|
    puts music.album
  end
  puts "\n\n"
  main_menu
end

def sort_title
  puts "Here is your list, sorted by song titles:"
  @list.each do |music|
    puts music.title
  end
  puts "\n\n"
  main_menu
end

main_menu



