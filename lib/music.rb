require './lib/playlist'

@list = []

def main_menu

  puts "Press 'a' to add new song to playlist or 'l' to list songs in your playlist."
  puts "Press 'x' to exit."
  main_choice = gets.chomp

  if main_choice == 'a'
    add_music
  elsif main_choice == 'l'
    list_music
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



