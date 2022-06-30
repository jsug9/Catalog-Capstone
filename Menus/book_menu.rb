require './MenuActions/add_book'
require './MenuActions/show_lists'
require './DataManagers/book_data'

class BookMenu
  include BookData

  def initialize
    @books = load_book_data
    @status = true
    @welcome_message = [
      'Welcome to the book menu!',
      'Please choose an option by entering a number:',
      '1 - List all books',
      '2 - List all labels',
      '3 - Add a book',
      '4 - Return to main menu'
    ]
  end

  def label_getter
    labels = []
    @books.each do |book|
      labels << book.label
    end
    labels.uniq
  end

  def run
    while @status
      @welcome_message.each { |i| puts i }
      option = gets.chomp

      case option
      when '1' then ShowLists.new.list_all_book(@books)
      when '2' then ShowLists.new.list_labels(label_getter)
      when '3' then AddBook.new.add_book(@books)
      when '4'
        save_book_data
        @status = false
      else
        puts "Sorry, you choose a wrong option\n "
      end
    end
  end
end
