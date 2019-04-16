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
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
    songs.each_with_index { |song, index|
      puts "#{index+1}. #{song}"
    }
end

def play(songs)
  array = Array.new
  puts "Please enter a song name or number:"
  song_or_number = gets.chomp
  for song in songs
    array.push(song)
  end
  range = (1..array.length)
  if array.include?(song_or_number)
    puts "Playing #{song_or_number}"
  elsif range.include?(song_or_number.to_i)
    puts "Playing #{array[song_or_number.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
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

