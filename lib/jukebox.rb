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

def play (array)
  puts "Please enter a song name or number:"
  input = gets.strip
  array.each_with_index do | s , i |
    if input == s 
      puts "Playing #{s}"
    elsif input.to_i == (i + 1)
      puts "Playing #{s}"
    end
  end
  if array.include?("#{input}") == false
      puts "Invalid input, please try again"
    end
end

def list (array)
  array.each_with_index do | s , i |
    puts "#{i + 1}. #{s}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  input = gets.strip
  if input == "help"
    help
  elsif input == "play"
    play(array)
  elsif input == "list"
    list(array)
  elsif input == "exit"
    exit_jukebox
  end
end  