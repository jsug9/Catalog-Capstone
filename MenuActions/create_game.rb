require './Classes/game.rb'
require './Classes/game_genre.rb'

class CreateGame
  def name_getter
    print('Enter the game_name: ')
    game_name = gets.chomp
  end

  def genre_getter
    print('Enter the genre: ')
    genre_getter = gets.chomp
  end

  def multiplayer
    print('Is this game a Multiplayer(Y/N): ')
    multiplayer = gets.chomp.downcase
  end

  def play_date
    print('Enter the last played date (YYYY-MM-DD): ')
    last_played_at = gets.chomp
  end

  def create_game(games)
    game = Game.new(name_getter, multiplayer, play_date)
    genre = Genre.new(genre_getter)
    game.add_genre(genre)
    games << game
  end
end