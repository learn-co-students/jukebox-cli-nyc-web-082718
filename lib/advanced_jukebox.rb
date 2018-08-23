#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'

my_songs = {
  "Go Go GO" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/alexaulum/Development/labs/jukebox-cli-nyc-web-082718/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name: "
  play_song = gets.chomp
  if my_songs.include?(play_song)
    puts "Playing #{play_song}"
    system 'open ' << my_songs[play_song]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help

  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
      end
    end
end
