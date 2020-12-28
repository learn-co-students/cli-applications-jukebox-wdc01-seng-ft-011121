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

def play(songs)
  yes = 0

  puts "Please enter a song name or number:"
  input = gets.strip
  
  songs.each_with_index do |song, index|
      if input == song || (input.to_i - 1) == index
        puts "Playing #{song}"
        yes = 1
      end
  end  

    if yes == 0
      puts "Invalid input, please try again"
    end
end

def list(songs)
  num = 1
  songs.each do |song|
    puts "#{num}. #{song}"
    num += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit" do
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    end
    puts "Please enter a command:"
    input = gets.strip
  end
  exit_jukebox
  
end
