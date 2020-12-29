# Add your code here

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
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(song_list)
  song_list.each_with_index {
    |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(song_list)
  puts /Please enter a song name or number:/
  user_choice = gets.strip
  user_choice = user_choice.to_i if user_choice.to_i != 0 
  
  if user_choice.class == Integer and (user_choice > 0 and user_choice <= song_list.length)
    puts "Playing #{song_list[user_choice - 1]}"
  elsif song_list.include? user_choice
    puts "Playing #{user_choice}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def invalid_command
  puts "Please enter a valid command."
end

def run(song_list)
  puts /Please enter a command:/
  user_input = gets.strip
  while user_input != "exit" do 
    if user_input == "help"
      help
    elsif user_input == "list"
      list(song_list)
    elsif user_input == "play"
      play(song_list)
    else
      invalid_command
    end
    user_input = gets.strip
  end
  
  if user_input == "exit"
    return exit_jukebox
  end
    
end

#run (songs)