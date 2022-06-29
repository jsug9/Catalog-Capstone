class ShowBookList
  def list_all_book(books)
    books.each do |book|
      puts "Publisher: #{book.publisher} \nCover State: #{book.cover_state} "
      puts "Published Date: #{book.publish_date} \nTitle: #{book.label.title} \nColor: #{book.label.color}\n\n"
    end
  end

  def list_labels(labels)
    labels.each do |label|
      puts "Title: #{label.title} Color: #{label.color}"
    end
  end
end
