class Library

  attr_accessor :books

  def initialize(input_books)
    @books = input_books
  end

  def get_book_full_details(input_title)
    books = @books
    book_full_details = nil
    for book in books
      if (book[:title] == input_title)
        book_full_details = book
      end
    end
    return book_full_details
  end

  def get_book_rental_details(input_title)
    books = @books
    book_rental_details = nil
    for book in books
      if (book[:title] == input_title)
        book_rental_details = book[:rental_details]
      end
    end
    return book_rental_details
  end

  def add_book_title(book_title)
    new_book = {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def change_rental_details(book_title, new_student="", new_date="")
    books = @books
    for book in books
      if (book[:title] == book_title)
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
      end
    end
  end

end
