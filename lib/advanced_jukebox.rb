#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/01.mp3,
"LiberTeens" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/02.mp3,
"Hamburg" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/03.mp3,
"Guiding Light" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/04.mp3,
 "Wolf" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/05.mp3,
 "Blue" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/06.mp3,
 "Graduation Failed" => jukebox-cli-seattle-web-career-042219/audio/Emerald-Park/07.mp3
 }

def help
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  
  counter = 1
  my_songs.each do |key, value|
    puts "#{counter} #{key}"
    counter += 1
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name"
  song_name = gets.chomp
  
  if my_songs.keys.include?(song_name)
    system open my_songs[song_name]
  else 
    puts "Invalid input. Please try again."
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
   help
  input = ""
  while input.downcase != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input.downcase == "list"
      list(songs)
    elsif input.downcase == "play"
      play(songs)
    elsif input.downcase == "help"
      help
    elsif input.downcase == "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again"
    end
  end
end
