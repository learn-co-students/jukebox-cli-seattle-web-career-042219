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

def help
  puts "I accept the following commands: \n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each_with_index do |song, i|
    if response == song || response.to_i == i+1
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "help"
      help
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  exit_jukebox
end
