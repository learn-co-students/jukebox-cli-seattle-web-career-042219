require "pry"

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
  songs.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  num_array = (1..songs.size)
  if num_array.include?(response.to_i)
    puts "Playing #{songs[response.to_i-1]}"

  elsif
    songs.include?(response)
    puts "Playing #{response}"

  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  answer = nil

  while answer != "exit"
    puts "Please enter a command:"

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
