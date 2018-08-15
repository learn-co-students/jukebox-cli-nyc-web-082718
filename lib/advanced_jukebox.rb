my_songs = {
"Go Go GO" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/Crusso/Desktop/Dev/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  i = 1

  while i < 8
    my_songs.each do |song_name, file|
      puts "#{i}. #{song_name.keys}"
      i += 1
    end
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp

    if command.downcase == "list"
      list(songs)
    elsif command.downcase == "play"
      play(songs)
    elsif command.downcase == "help"
      help
    elsif command.downcase == "exit"
      exit_jukebox
      break
    end
  end
end
