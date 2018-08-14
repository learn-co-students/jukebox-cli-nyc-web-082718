require "pry"

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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  i = 0
  while i < songs.length
    puts "#{(i+1)}. #{songs[i]} "
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  usersInput = gets.chomp
  if songs.include?(usersInput)
    puts "Playing #{usersInput}"
  elsif usersInput.to_i < songs.length && usersInput.to_i > 0
    songnumber = usersInput.to_i - 1
    puts "Playing #{songs[songnumber]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == 'list'
    list(songs)
  elsif input == 'play'
    play(songs)
  elsif input == 'help'
    help
  elsif input == 'exit'
    exit_jukebox
  else
    run
  end
end
