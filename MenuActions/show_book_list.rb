class ShowBookList
    def list_all_book(books)
      books.each do |book|
        puts "Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Published Date: #{book.publish_date} Title: #{book.label.title} Color: #{book.label.color}"
      end
    end

    def list_labels(labels)
      labels.each do |label|
        puts "Title: #{label.title} Color: #{label.color}"
      end
    end
  end
  