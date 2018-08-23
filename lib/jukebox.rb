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

# def  say_hello(name)
#   "Hello #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)
#


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  binding.pry
  "Please enter a song name or number:"
  song_choice = gets.chomp

  if song_choice.to_i
    index = (song_choice.to_i) - 1
    if index > 9
      puts "Invalid input, please try again"
    else
      puts songs[index]
    end

  elsif songs.include?(song_choice)
    puts song_choice

  else
    puts "Invalid input, please try again"
  end

end

def list(songs)
  puts songs.each_with_index + 1
  binding.pry
end

def exit(arg)
  puts "Goodbye"
end

def run(arg)
  puts "Please enter a command:"
  command_choice = gets.chomp

  if command_choice == "help"
    help
  elsif command_choice == "play"
    play
  elsif command_choice == "list"
    list

  else
    puts "Goodbye"
    return
  end
end
