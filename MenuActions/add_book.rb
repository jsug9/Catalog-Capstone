require './Classes/book'
require './Classes/label'

class AddBook
  
  def publisher_getter
    print('Enter the Publisher: ')
    gets.chomp
  end

  def cover_state_getter
    print('Enter the Cover state: ')
    gets.chomp
  end

  def date_getter
    print('Enter the date of publication (YYYY-MM-DD): ')
    gets.chomp
  end

  def title_getter
    print('Enter the Book title: ')
    gets.chomp
  end

  def color_getter
    print('What color it is? ')
    gets.chomp
  end

  def add_book(books)
    book_data = Book.new(publisher_getter, cover_state_getter, date_getter)
    label = Label.new(title_getter, color_getter)
    book_data.add_label(label)
    books << book_data
    puts "\nBook successfully Added\n\n"
  end
end
