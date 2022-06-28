class MusicMenu
  def initialize
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

  def run
    while @status
      @welcome_message.each { |i| puts i }
      option = gets.chomp

      case option
      when '1' then puts 1
      when '2' then puts 2
      when '3' then puts 3
      when '4' then @status = false
      else
        puts "Sorry, you choose a wrong option\n "
      end
    end
  end
end
