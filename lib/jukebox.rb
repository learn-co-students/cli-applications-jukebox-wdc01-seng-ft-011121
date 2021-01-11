# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  
  x = 0
  songs.length.times do
    puts "#{x+1}. #{songs[x]}"
    x += 1
  end
  
end

def play(songs)
  
  puts "Please enter a song name or number:"
  ans = gets.strip
  
  temp = ans.to_i
  if temp <= songs.length
    puts "Playing #{songs[temp-1]}"
  end
  
  
  x = 0
  songs.length.times do
    if ans == songs[x]
      puts "Playing #{ans}"
    end
    x += 1
  end
  
  
  puts "Invalid input, please try again"
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  
  puts "Please enter a command:"
  
  ans = gets.strip
  while ans != "exit" do
    if ans == "help"
      help
    elsif ans == "list"
      list(songs)
    elsif ans == "play"
      play(songs)
    end
    run(songs)
    break
  end
  if ans == "exit"
    exit_jukebox
  end
  
end








