require './Classes/music_album'
require './Classes/genre'

class CreateMusicAlbum
  def date_getter
    print('Enter the date of publication (YYYY-MM-DD): ')
    gets.chomp
  end

  def on_spotify_getter
    print('Is the album on Spotify? (Y/N): ')
    on_spotify = gets.chomp.downcase
    on_spotify == 'y'
  end

  def genre_getter
    print('Enter the genre: ')
    gets.chomp
  end

  def create_music_album(music_albums)
    music_album = MusicAlbum.new(date_getter, on_spotify_getter)
    genre = Genre.new(genre_getter)
    music_album.add_genre(genre)
    music_albums << music_album
  end
end
