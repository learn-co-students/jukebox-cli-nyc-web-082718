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
	puts "I accept the following commads:"
	puts "- help : displays this help message"
	puts "- list : displays this list message"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(array)
	array.each_with_index do |song, index|
		number = index + 1
		puts "#{number}. #{song}"
	end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  if (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  elsif songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help

	user_response = ""

	until user_response == "exit"

		puts "Please enter a command:"
		user_response = gets.chomp

		if user_response == "help"
			help
		elsif user_response == "list"
			list(songs)
		elsif user_response == "play"
			play(songs)
		elsif user_response == "exit"
			exit_jukebox
		end
	end

end
