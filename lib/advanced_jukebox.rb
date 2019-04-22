#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/rachel/Development/Labs/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands: \n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end



def list(my_songs)
  keys = my_songs.keys
  keys.each do |song|
    puts song
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name:"
  response = gets.chomp
  my_songs.each do |song, path|
    if response == song
      filename = my_songs[song]
      system "open #{path}"
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    if user_input == "list"
      list(my_songs)
    elsif user_input == "play"
      play(my_songs)
    elsif user_input == "help"
      help
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end
