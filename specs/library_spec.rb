require('minitest/autorun')
require('minitest/reporters')
require_relative('../library')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test


  def setup()
    @books =
    [
      {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "Jane Eyre",
        rental_details: {
          student_name: "Ross",
          date: "07/12/17"
        }
      },
      {
        title: "Star Wars",
        rental_details: {
          student_name: "Luke",
          date: "03/09/19"
        }
      }
    ]

    @library = Library.new(@books)

  end

  def test_get_books
    assert_equal(
      [
        {
          title: "Lord of the Rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "Jane Eyre",
          rental_details: {
            student_name: "Ross",
            date: "07/12/17"
          }
        },
        {
          title: "Star Wars",
          rental_details: {
            student_name: "Luke",
            date: "03/09/19"
          }
        }
        ], @library.books)

        assert_equal({title: "Lord of the Rings",
                      rental_details: {
                        student_name: "Jeff",
                        date: "01/12/16"
                      }}, @library.books[0])
        end

        def test_get_book_details
          assert_equal({title: "Star Wars", rental_details: { student_name: "Luke", date: "03/09/19" }}, @library.get_book_full_details("Star Wars"))
        end

        def test_get_book_details_not_found
          assert_nil(@library.get_book_full_details("Hello you"))
        end

        def test_get_book_rental_details
          assert_equal( {student_name: "Ross", date: "07/12/17"}, @library.get_book_rental_details("Jane Eyre"))
        end

        def test_get_book_rental_details_not_found
          assert_nil(@library.get_book_rental_details("No title"))
        end

        def test_add_book_title
          assert_equal([
            {
              title: "Lord of the Rings",
              rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
              }
            },
            {
              title: "Jane Eyre",
              rental_details: {
                student_name: "Ross",
                date: "07/12/17"
              }
            },
            {
              title: "Star Wars",
              rental_details: {
                student_name: "Luke",
                date: "03/09/19"
              }
            },
            {
              title: "Animal's Farm",
              rental_details: {
                student_name: "",
                date: ""
              }
            }
            ], @library.add_book_title("Animal's Farm"))
          end

          def test_change_rental_details
            assert_equal([
              {
                title: "Lord of the Rings",
                rental_details: {
                  student_name: "Jeff",
                  date: "01/12/16"
                }
              },
              {
                title: "Jane Eyre",
                rental_details: {
                  student_name: "Ross",
                  date: "07/12/17"
                }
              },
              {
                title: "Star Wars",
                rental_details: {
                  student_name: "Johanna",
                  date: "23/11/19"
                }
              }
              ], @library.change_rental_details("Star Wars", "Johanna", "23/11/19"))
            end

          end
