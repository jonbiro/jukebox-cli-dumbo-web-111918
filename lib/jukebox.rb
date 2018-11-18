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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.chomp
  is_number = song_name_or_number.scan(/^\d+$/).length > 0
  if is_number
    number = song_name_or_number.scan(/^\d+$/)[0].to_i
    if number > 0 && number < songs.length+1
      return songs[number -1]
    end
  else
    songs.each do |song|
      if song_name_or_number == song
        puts song
        return
      end
    end
  end
    puts "Invalid input, please try again"
end
