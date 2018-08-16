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
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  
  if songs.include?(selection)
    puts "Playing #{selection}"
  elsif (1..songs.length).to_a.include?(selection.to_i)
    puts "Playing #{songs[selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  answer = ""
  while answer != "exit" do
    answer = gets.chomp
    if answer == "help"
      help
      elsif answer == "list"
      list(songs)
      elsif answer == "play"
      play(songs)
      elsif answer == "exit"
      exit_jukebox
      break
    end
  end
end
      
    
