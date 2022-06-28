class GameMenu
  def initialize
    @status = true
    @welcome_message = [
      'Welcome to the game menu!',
      'Please choose an option by entering a number:',
      '1 - Option 1',
      '2 - Option 2',
      '3 - Option 3',
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
