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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox()
  puts "Goodbye"

end

def play(songs)
  puts "Please enter a song name or number:"
  command = gets.chomp
  if command.is_i?
    if command.to_i <= songs.length
      puts "Playing #{songs[command.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end

  elsif songs.include?(command)
    puts "Playing #{songs[songs.index(command)]}"

  else
    puts "Invalid input, please try again"
  end

end

class String
  def is_i?
    /\A[-+]?\d+\z/ === self
  end
end











def run(songs)
help()
  while true
    puts "Please enter a command:"
    command = gets.chomp

    case command

    when "help"
      help

    when "list"
      list(songs)

    when "play"
      play(songs)

    when "exit"
      exit_jukebox
      exit

    else
      puts "Invalid input, please try again"

    end


  end
end
