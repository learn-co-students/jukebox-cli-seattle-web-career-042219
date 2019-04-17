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
	songs.each_with_index do |song, index|
		puts "#{index + 1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	song_input = gets.chomp
	if (1..songs.length).include?(song_input.to_i)
		puts songs[song_input.to_i - 1]
	elsif songs.include?(song_input)
		puts song_input
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
	input = ""
	while input != "exit"
		input = gets.strip 
		case input
		when "list"
			list(songs)
		when "play"
			play(songs)
		when "exit"
			exit_jukebox
		else
			help
		end
	end
end

=begin
def say_hello(name)
	"Hi #{name}!"
end

puts "Enter your name:"
user_name = gets.chomp

puts say_hello(user_name)
=end