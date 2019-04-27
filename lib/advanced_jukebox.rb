#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/01.mp3',
  "LiberTeens" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/03.mp3',
  "Guiding Light" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/04.mp3',
  "Wolf" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/05.mp3',
  "Blue" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => 'Desktop/Flatiron Code/Fundamentals/jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/07.mp3'
}

def help
  help = <<-HELP 
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  HELP
  puts help
end

def list(my_songs)
  my_songs.keys.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if !my_songs.keys.include?(song_to_play)
    puts "Invalid input, please try again" 
  else
    puts "Now playing => #{song_to_play}"
    puts my_songs[song_to_play]
    system "open" + my_songs[song_to_play]
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  user_input = ""
  while user_input
    puts "Please enter a command:"
    user_input = gets.strip.downcase 
    case user_input
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      list(my_songs)
      play(my_songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
