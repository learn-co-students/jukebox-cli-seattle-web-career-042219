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

def list(song_list)
  song_list.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(song_list)
  found = 0
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  song_list.each_with_index do |song, index|
    if song_request.to_i == index+1 || song.include?(song_request)
      puts "Playing #{song}"
      found = 1
    end
  end
  puts "Invalid input, please try again." if found == 0
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when 'help'
      help()
    when 'exit'
      exit_jukebox()
      break
    else
      puts "Invalid Command."
    end
  end
end
