require './Classes/game'
require './Classes/game_genre'

class CreateGame
  def name_getter
    print('Enter the game_name: ')
    gets.chomp
  end

  def genre_getter
    print('Enter the genre: ')
    gets.chomp
  end

  def multiplayer
    print('Is this game a Multiplayer(Y/N): ')
    gets.chomp.downcase
  end

  def play_date
    print('Enter the last played date (YYYY-MM-DD): ')
    gets.chomp
  end

  def create_game(games)
    game = Game.new(name_getter, multiplayer, play_date)
    genre = Genre.new(genre_getter)
    game.add_genre(genre)
    games << game
  end
end
