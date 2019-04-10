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
  puts "I accept the follow commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

=begin
#play
  can find a song when given a number from the user (FAILED - 1)
  can find a song when given a full song name (FAILED - 2)
  returns an error when given a number that does not correspond to a song (FAILED - 3)
  returns an error when given a name that does not correspond to an existing song (FAILED - 4)
=end
def play(songs)
  max_song_num = songs.length
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if (1..max_song_num).include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i-1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  #count = 1
  songs.each.with_index(1) {|title|
    puts title
    #count++
    }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp.downcase

  case command
  when command = 'help'
    help
  when command = 'play'
    play(songs)
  when command = 'list'
    list(songs)
  when command = 'exit'
    exit
  else
    puts "Please enter a command:"
  end



end
