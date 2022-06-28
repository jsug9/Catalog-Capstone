class ShowLists
  def on_spotify?(music_album)
    "On Spotify: #{music_album.on_spotify ? 'Yes' : 'No'}"
  end

  def list_all_music_albums(music_albums)
    music_albums.each do |music_album|
      puts "Published in: #{music_album.publish_date}, #{on_spotify?(music_album)}, Genre: #{music_album.genre.name}"
    end
  end

  def list_all_genres(genres)
    genres.each do |genre|
      puts genre.name
    end
  end

  def is_multiplayer?(game)
    "Multiplayer: #{game.is_multiplayer ? 'Yes' : 'No'}"
  end

  def list_all_games(games)
    games.each do |game|
      puts "Name: #{game.game_name}, #{is_multiplayer?(game)}, Genre: #{game.genre.name}, Last played: #{game.last_played_at}"
    end
  end

  def list_game_genres(genres)
    genres.each do |genre|
      puts genre.name
    end
  end
end
