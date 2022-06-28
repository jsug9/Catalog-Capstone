class ShowLists
  def on_spotify?(music_album)
    "On Spotify: #{music_album.on_spotify ? 'Yes' : 'No'}"
  end

  def list_all_music_albums(music_albums)
    music_albums.each do |music_album|
      puts "Published in: #{music_album.publish_date}, #{on_spotify?(music_album)}, Genre: #{music_album.genre}"
    end
  end

  def list_all_genres(genres)
    genres.each do |genre|
      puts "Genre: #{genre.name}"
    end
  end
end
