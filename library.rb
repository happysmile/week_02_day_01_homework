class Library

  attr_accessor :books

  # constructor

  def initialize(input_books)
    if input_books != nil
      @books = input_books
    else
      @books = []
    end
  end

  # NB worth creating a find_book(title) function to be used in several of the following functioins

  def find_book_by_title(book_title)
    books = @books
    for book in books
      if (book[:title] == book_title)
        return book
      end
    end
    return nil
  end

  def get_book_full_details(input_title)
    return find_book_by_title(input_title)
  end

  def get_book_rental_details(input_title)
    book_full_details = get_book_full_details(input_title)
    if(book_full_details!=nil)
      return book_full_details[:rental_details]
    else
      return nil
    end
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
