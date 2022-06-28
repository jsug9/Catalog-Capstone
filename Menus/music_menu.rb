require './MenuActions/show_lists'
require './MenuActions/create_music_album'

class MusicMenu
  def initialize
    @music_albums = []
    @status = true
    @welcome_message = [
      'Welcome to the music menu!',
      'Please choose an option by entering a number:',
      '1 - List all music albums',
      '2 - List all genres (e.g \'Comedy\', \'Thriller\')',
      '3 - Add a new music album',
      '4 - Return to main menu'
    ]
  end

  def genres_getter
    genres = []
    @music_albums.each do |music_album|
      genres << music_album.genre
    end
    genres.uniq
  end

  def run
    while @status
      @welcome_message.each { |i| puts i }
      option = gets.chomp

      case option
      when '1' then ShowLists.new.list_all_music_albums(@music_albums)
      when '2' then ShowLists.new.list_all_genres(genres_getter)
      when '3' then CreateMusicAlbum.new.create_music_album(@music_albums)
      when '4' then @status = false
      else
        puts "Sorry, you choose a wrong option\n "
      end
    end
  end
end
