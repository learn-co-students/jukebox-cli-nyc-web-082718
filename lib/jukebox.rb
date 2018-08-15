require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx +1}. #{song}"
  end
end

def play(songs)
  binding.pry
  puts "Please enter a song name or number"
  request = gets.chomp
  if request.is_a? String
    songs.each do |song|
      if song.downcase == request.downcase
        puts "Playing #{song}"
      end
    end
  else
    if request <= songs.length
      puts "Playing #{songs[request - 1]}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end
