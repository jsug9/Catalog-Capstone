class Main
  def initialize
    @status = true
    @welcome_message = [
      "Welcome to the catalog app!\n ",
      'Please choose an option by entering a number:',
      '1 - Option 1',
      '2 - Option 2',
      '3 - Option 3',
      '4 - Option 4',
      '5 - Option 5',
      '6 - Option 6',
      '7 - Exit'
    ]
  end

  def run # rubocop:disable Metrics/CyclomaticComplexity
    while @status
      @welcome_message.each { |i| puts i }
      option = gets.chomp

      case option
      when '1' then puts 1
      when '2' then puts 2
      when '3' then puts 3
      when '4' then puts 4
      when '5' then puts 5
      when '6' then puts 6
      when '7'
        puts "Thank you for using this app!\n "
        @status = false
      else
        puts "Sorry, you choose a wrong option\n "
      end
    end
  end
end

main = Main.new
main.run
