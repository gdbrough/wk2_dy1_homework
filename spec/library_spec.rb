require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def test_books_getter()
    library = Library.new({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      })
      assert_equal({title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16"}}, library.books())
  end

  def test_return_all_info_about_book()
    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    book2 = {
      title: "war_of_the_worlds",
      rental_details: {
        student_name: "Graeme",
        date: "28/12/17"
      }
    }
    library = Library.new([book, book2])
    book_info = library.return_all_info_about_book("war_of_the_worlds")
    assert_equal(book2, book_info)
  end

  def test_return_rental_info_about_book()
    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    library = Library.new([book])
    rental_info = library.return_rental_info_about_book("lord_of_the_rings")
    assert_equal(book[:rental_details], rental_info)
  end

  def test_add_new_book()
    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    new_book = {
      title: "war_of_the_worlds",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    library = Library.new([book])
    library.add_new_book(new_book)
    assert_equal(2,library.books.length)
  end

  def test_update_rental_info()
    book = {
      title: "war_of_the_worlds",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    library = Library.new([book])
    library.update_rental_info("war_of_the_worlds", "Graeme", "29/01/18")
    rental_info = library.return_rental_info_about_book("war_of_the_worlds")
    assert_equal({student_name: "Graeme", date: "29/01/18"}, rental_info)
  end

end
