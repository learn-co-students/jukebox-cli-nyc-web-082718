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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

### The `help` Method

# This method should `puts` out the following:
#
# ```bash
# I accept the following commands:
# - help : displays this help message
# - list : displays a list of songs you can play
# - play : lets you choose a song to play
# - exit : exits this program
# ```

def list(songs)
  song_list = []
  counter = 1
  songs.each do |song|
    song_list.push("#{counter}. #{song}")
    counter += 1
  end
  puts song_list
end


# ### The `list` Method
#
# This method takes in an argument of the `songs` array of `puts` out the following:
#
# ```bash
# 1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up
# 3. Sufjan Stevens - Too Much
# 4. The Naked and the Famous - Young Blood
# 5. (Far From) Home - Tiga
# 6. The Cults - Abducted
# 7. Phoenix - Consolation Prizes
# 8. Harry Chapin - Cats in the Cradle
# 9. Amos Lee - Keep It Loose, Keep It Tight
# ```
#
# **Hint:** Use the `Array#each_with_index` method to access the index number of a given element as you step through the iteration. Remember that arrays are indexed starting at `0`. So, adding `1` to the index number at a given step of the iteration will result in the correct song number for the purposes of outputting your list of songs.

def play(songs)
puts "Please enter a song name or number:"
gets.chomp
answer = gets.chomp
if answer.class == String && songs.include?(answer)
puts "Playing #{answer}"
elsif (1..9).to_a.include?(answer.to_i)
    puts "Playing #{songs[answer.to_i - 1]}"
else
puts "Invalid input, please try again"
end
end

# ### The `play` Method
#
# This method also takes in an argument of the `songs` array. It first `puts` out the prompt: `"Please enter a song name or number:"`. It then stores the user's response using `gets.chomp`.
#
# If the user's response is a valid song number or song name, the method should `puts` out: `"Playing <song name>"`. Otherwise, it should `puts` out: `"Invalid input, please try again"`.

def exit_jukebox
puts "Goodbye"
end

# ### The `exit_jukebox` Method
#
# This method is simple. It `puts` out: `"Goodbye"`.

def run(songs)
help
puts "Please enter a command:"
gets.chomp
command = gets.chomp
while command
  if command == "list"
    list
  elsif command == "play"
      play
  elsif command == "help"
        help
      else command == "exit"
        exit_jukebox
        break
end
end
end

# ### The `run` Method
#
# This method is a little trickier. It will use the other methods we built,
#our "helper" methods, to actually enact the running of our Jukebox.
#
# First, this method should call on the `help` method to show the user the available commands.
# Then, it should `puts` out the prompt: `"Please enter a command:"`.
# It should capture the user's response using `gets.chomp` or `gets.strip`.
# #
# # We need to keep our program running as long as the user's input is *not* `"exit"`.
#  Use a loop to continue asking the user for input until or unless their input is `"exit"`.
#  Use `if` or `case` statements to determine how your program will respond to a user's input.
#  For example, if their input is `"list"`, call the `list` method, if their input is `"play"`,
#  call the `play` method, if their input is `"help"`, call the `help` method and if their input is
#  `"exit"`, call the `exit_jukebox` method *and* break out of your loop to stop the program.
