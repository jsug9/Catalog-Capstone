require './MenuActions/show_lists'

class GameMenu
  def initialize
    @games = load_games
    @status = true
    @welcome_message = [
      'Welcome to the game menu!',
      'Please choose an option by entering a number:',
      '1 - List all games',
      '2 - List all genres(e.g \'Sandbox\', \'Shooters\', \'Action-adventure\')',
      '3 - Add a game',
      '4 - Return to main menu'
    ]
  end

  def game_genres
    game_genres = []
    @games.each do |game|
      game_genres << game.genre
    end
  end

  def run
    while @status
      @welcome_message.each { |i| puts i }
      option = gets.chomp

      case option
      when '1' then ShowLists.new.list_all_games(@games)
      when '2' then ShowLists.list_game_genres(game_genres)
      when '3' then CreateGame.new.create_game(@games)
      when '4'
        save_games
        @status = false
      else
        puts "Sorry, you choose a wrong option\n "
      end
    end
  end
end
