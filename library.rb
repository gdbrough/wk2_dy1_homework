class Library

  attr_reader :books
  attr_writer :books

  def initialize(library_books)
    @books = library_books
  end

  def return_all_info_about_book(book_name)
    for book in @books
      if book[:title] == book_name
        return book
      end
    end
    return nil
  end

  def return_rental_info_about_book(book_name)
    for book in @books
      if book[:title] == book_name
        return book[:rental_details]
      end
    end
    return nil
  end

  def add_new_book(new_book)
    @books.push(new_book)
  end

  def update_rental_info(book_name, borrower, date)
    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = borrower
        book[:rental_details][:date] = date
      end
    end
  end

end
