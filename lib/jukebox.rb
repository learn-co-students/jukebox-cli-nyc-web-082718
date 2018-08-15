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
  puts "Please enter a song name or number"
  request = gets.chomp

  if (1..9).include?(request.to_i)
    puts "Playing #{songs[request.to_i - 1]}"
  elsif song = songs.find {|song| song.downcase == request.downcase}
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
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
