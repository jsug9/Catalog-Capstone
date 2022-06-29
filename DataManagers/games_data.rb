require './json'
require_relative './Classes/game'

module GamesData
  def load_games
    content = []
    file = './data/games.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |game|
        new_game = Game.new(game['play_date'], game['name'], ['multiplayer'])
        new_game.add_genre(Genre.new(game['genre']))
        content << new_game
      end
    end
    content
  end

  def save_games
    content = []
    @games.each do |game|
      content << { play_date: game.last_played_at, is_multiplayer: game.multiplayer, genre: game.genre.name }
    end
    File.write('./data/games.json', JSON.generate(content))
  end
end
